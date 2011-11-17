require 'base64'
require 'digest/md5'

class RedirectsController < ApplicationController
  def redirect
    @redirect = get_from_code(params[:code])
    redirect_to @redirect ? @redirect.url : root_url
  end

  def create
    url = params[:url]
    if not url
      redirect_to root_url and return
    end

    code = params[:code] ? params[:code] : generate_new_code(url)

    # Does it exist already?
    @redirect = get_from_code(code)
    if @redirect
      follow @redirect and return
    end

    # Since this is for personal use, throttle the number of created
    # redirects
    threshold_in_hours = 1
    latest_time = Redirect.maximum(:created_at) or 2.hours.ago
    if (Time.now - latest_time) < 1.hours
      fail 'Cannot create redirect right now' and return
    end
      
    # Create the redirect
    @redirect = Redirect.new(:url => url, :code => code)
    if @redirect
      @redirect.save()
      follow @redirect
    else
      fail 'Failed to create redirect' and return
    end
  end

  # Use the low order bits of the MD5 hash, and base64/urlencode
  def generate_new_code(url)
    digest = Digest::MD5.hexdigest(url).to_i(16) % 2**32
    base64 = Base64.encode64([digest].pack("N"))
    return base64.sub(/==\n$/, '').sub('_', '-').sub('/', '+')
  end

  def get_from_code(code)
    return Redirect.find(:first, :conditions => [ 'code = ?', code])
  end

  def follow(redirect)
    redirect_to '/' + redirect.code, :status => 201
  end

  def fail(err_str)
    render :status => :unprocessable_entity, :text => err_str
  end
end

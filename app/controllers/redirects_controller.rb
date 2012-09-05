require 'base64'
require 'digest/md5'
require 'rest_client'
require 'uri'

class RedirectsController < ApplicationController
  def redirect
    @redirect = get_from_code(params[:code])
    if @redirect
      redirect_to @redirect.url
    else
      render_404 and return
    end
  end

  def create
    # Validate url
    url = params[:url]
    if not url
      render_404 and return
    end
    if url !~ /^#{URI::regexp}$/
      fail 'Invalid url' and return
    end

    # Validate code
    code = params[:code] ? params[:code] : generate_new_code(url)
    if code !~ /^[0-9a-zA-Z\-+_]*$/
      fail 'Invalid code' and return
    end

    # Does it exist already?
    @redirect = get_from_code(code)
    if @redirect
      if @redirect.url != url
        fail 'Code is already in use' and return
      else
        follow @redirect and return
      end
    end

    # Since this is for personal use, throttle the number of created
    # redirects
    threshold_in_hours = 1
    count_per_threshold = 3
    old_redirect = Redirect.order("created_at DESC").limit(count_per_threshold).last
    latest_time = old_redirect ? old_redirect.created_at : (threshold_in_hours+1).hours.ago
    if (Time.now - latest_time) < threshold_in_hours.hours
      fail 'Cannot create redirect right now' and return
    end
      
    # Create the redirect
    @redirect = Redirect.new(:url => url, :code => code)
    if @redirect and @redirect.save()
      notify_me(@redirect)
      follow @redirect and return
    else
      fail 'Failed to create redirect' and return
    end
  end

  # Let me know if villains start using my URL shortener
  def notify_me(redirect) 
#    url = get_full_url(redirect)
#    message = "URL shortener was used to shorten #{redirect.url} to " +
#      "<a href=#{url}>#{url}</a>"
#
#    RestClient.post API_URL+"/messages", 
#      :from => "mailer@mailgun.net",
#      :to => MY_EMAIL,
#      :subject => "URL Shortener used",
#      :text => strip_tags(message),
#      :html => message
  end

  # Use the low order bits of the MD5 hash, and base64/urlencode
  def generate_new_code(url)
    digest = Digest::MD5.hexdigest(url).to_i(16) % 2**32
    base64 = Base64.encode64([digest].pack("N"))
    return base64.gsub(/==\n$/, '').gsub('_', '-').gsub('/', '+')
  end

  def strip_tags(msg)
    return msg.gsub(/<\/?[^>]*>/, '')
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

  def get_full_url(redirect)
    return root_url + '/' + redirect.code
  end
end

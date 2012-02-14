class ApplicationController < ActionController::Base
  protect_from_forgery

  def render_404
    render 'home/error_404', :status => 404
  end

end

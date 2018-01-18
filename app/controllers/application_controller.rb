class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def render_404
    params[:title] = 'Sorry'
    params[:message] = "That page doesn't exist"
    params[:error_code] = 404
    render_error
  end

  def render_422
    params[:title] = 'Sorry'
    params[:message] = "You don't have permission to do that"
    params[:error_code] = 422
    render_error
  end
  
  def render_500
    params[:title] = 'Sorry'
    params[:message] = "Something has gone wrong :("
    params[:error_code] = 500
    render_error
  end

  def render_error
    render 'home/error', :status => params[:error_code]
  end
end

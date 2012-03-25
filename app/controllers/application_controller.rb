class ApplicationController < ActionController::Base
  before_filter :authenticate

  protect_from_forgery
  clear_helpers

  protected
  def authenticate
 # if session[:user].nil?
#			redirect_to('/login/login')
#		end
 #   session[:username] = "Choopan"
#    authenticate_or_request_with_http_basic do |username, password|
#      username == "foo" && password == "bar"
#    end
  end

end

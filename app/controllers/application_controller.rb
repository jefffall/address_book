class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :wrap_site_in_basic_auth

  def wrap_site_in_basic_auth
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == "jfall" && password == "jfall"
    end
  end
end

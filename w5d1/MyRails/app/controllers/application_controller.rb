class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :signed_in?

  def current_user
    return nil unless session[:session_token]
    User.find_by_session_token(session[:session_token])
  end

  def log_in!(user)
    session[:session_token] = user.session_token
  end

  def log_out
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def require_sign_in
    redirect_to new_session_url unless signed_in?
  end

  def signed_in?
    !!current_user
  end
end

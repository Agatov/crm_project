class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def current_landing
    Landing.first
  end

  def current_account
    Account.first
  end

  helper_method :current_landing

  def not_found
    raise ActiveRecord::RecordNotFound.new('not found')
  end

  def render_not_found
    render json: {status: :not_found}
  end

  # @return [User]
  def current_user
    @current_user ||= User.find(cookies[:user_id])
  end
  helper_method :current_user

  def authenticate_user!
    not_found unless user_signed_in?
  end

  def user_signed_in?
    return false if cookies[:user_id] and cookies[:user_id].empty?
    cookies[:user_id] ? true : false
  end

  helper_method :user_signed_in?

end

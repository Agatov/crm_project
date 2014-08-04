class AuthenticationsController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user.can_be_authorized? params[:user][:password]
      sign_in @user
      redirect_to leads_path
    else
      redirect_to :back
    end
  end

  def logout
    sign_out
  end

  private

  def sign_in(user)
    cookies[:user_id] = user.id
  end

  def sign_out
    cookies.delete(:user_id)
    redirect_to :back
  end

  def authentication_params
    params.require(:user).permit(:email, :password)
  end
end
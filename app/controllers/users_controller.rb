class UsersController < ApplicationController
  def index
    @users = current_account.users
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = current_account.users.build user_params

    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

    if @user.update_attributes user_params
      redirect_to users_path
    else
      render :edit
    end
  end


  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :role)
  end
end

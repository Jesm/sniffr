class UsersController < ApplicationController
  before_action :require_guest, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path
    else
      render 'users/new'
    end
  end

  protected
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end

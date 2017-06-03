class SessionsController < ApplicationController
  before_action :require_guest, only: [:new, :create]
  before_action :require_user, only: [:destroy]

  def new
  end

  def create
    @user = User.find_by_email(session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to home_path
    else
      @authenticate_message = 'Credenciais incorretas.'
      render 'sessions/new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path
  end

  protected
    def session_params
      params.require(:session).permit(:email, :password)
    end
end

class SessionsController < ApplicationController
  def new
    render layout: false
  end

  def create
    @user = User.find_by(username: params[:user][:username]) 
    
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to historical_moments_path
    else
      flash[:notice] = "Sorry, we can't find a user with that username and password"
      redirect_to new_session_path
    end
  end

  def destroy
    session.destroy

    redirect_to new_session_path
  end
end

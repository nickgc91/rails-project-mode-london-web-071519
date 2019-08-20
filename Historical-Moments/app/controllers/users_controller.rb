class UsersController < ApplicationController

    def new 
        @user = User.new
        render layout: false
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        
        redirect_to historical_moments_path
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
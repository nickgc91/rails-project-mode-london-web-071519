class UsersController < ApplicationController

    def new 
        @user = User.new
        render layout: false
    end

    def create
        
        @user = User.new(user_params)
        
        if @user.save
            session[:user_id] = @user.id
            redirect_to historical_moments_path
        else
            render :new
        end
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
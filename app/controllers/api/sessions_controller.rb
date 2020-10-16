class Api::SessionsController < ApplicationController
    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        # debugger
        if @user
            login!(@user)
            render "api/users/show"
            # redirect_to cats_url # or wherever you want to go
        else
            render json: ["Invalid credentials"], status: 401
        end
    end

    def destroy
        @user = current_user
        if @user
            logout! # defined in application controller
            return {}
        else 
            render json: ["no user was logged in"], status: 404
        end
        # @user.reset_session_token!
        # session[:session_token] = nil
    end
end

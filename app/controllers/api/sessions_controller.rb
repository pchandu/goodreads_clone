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
            flash.now[:errors] = ["Invalid credentials"]
            render :new
        end
    end

    def destroy
        logout! # defined in application controller (you could write logic here as well)
        # @user.reset_session_token!
        # session[:session_token] = nil
    end
end

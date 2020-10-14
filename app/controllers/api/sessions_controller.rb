class Api::SessionsController < ApplicationController
    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        if @user
            login!(@user)
            redirect_to cats_url # or wherever you want to go
        else
            flash.now[:errors] = ["Invalid credentials"]
            render :new
        end
    end

    def destroy
        logout! # defined in application controller (you could write logic here as well)
        redirect_to new_session_url
    end
end

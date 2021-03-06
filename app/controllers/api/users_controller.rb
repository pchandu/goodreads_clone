class Api::UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save # do NOT use save! here
            login!(@user) # defined in ApplicationController
            render :show  # some page you want to go to
        else
            # flash.now[:errors] = user.errors.full_messages
            # render :new # re-render the sign up form
            render json: @user.errors.full_messages, status: 401
        end
    end

    def show
        # returns back info about a user via jbuilder
    end

private
    def user_params
        # if your user doesn't have a username
        # but has an email, use email instead
        params.require(:user).permit(:username, :email, :password)
    end
end

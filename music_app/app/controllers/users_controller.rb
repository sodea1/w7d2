class UsersController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to bands_url
        else
            flash[:errors] << "Invalid username or password"
        end
    end

    
    private


    def user_params
        params.require(:user).permit(:email, :password)
    end

end

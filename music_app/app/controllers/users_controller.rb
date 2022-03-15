class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def show
        debugger
        @user = User.find(params[:id])
        render :show
    end

    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            redirect_to user_url(@user)
        else
            flash[:errors] << "Invalid username or password"
        end
    end

    private


    def user_params
        params.require(:user).permit(:email, :password)
    end

end

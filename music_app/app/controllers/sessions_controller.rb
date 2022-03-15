class SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

        if @user.save
            
            redirect_to users_url(@user)

    end

end

class ApplicationController < ActionController::Base

    helper_method :logged_in?, :logout!, :current_user

    def logged_in?
        !!current_user
    end

    def logout!
        current_user.reset_session_token! # why
        session[:session] = nil
        @current_user = nil
    end

    def login(user)
        session[:session_token] = user.reset_session_token!
    end

    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end
    
    def require_logged_in
        redirect_to new_session_url unless logged_in?
    end

    def require_logged_out
        redirect_to user_url(self) if logged_in?
    end

end

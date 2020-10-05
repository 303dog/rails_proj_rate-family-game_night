class ApplicationController < ActionController::Base
 
    helper_method :current_user

    private

    def current_user
       @user ||= User.find_by_id(session[:user_id])
    end

    def logged_in?
        !!session[:user_id]
    end

    def redirect_if_not_logged_in
        if !logged_in?
            redirect_to login_path
        end
    end
    

end
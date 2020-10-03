class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    #protect_from_forgery with: :exception
 

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
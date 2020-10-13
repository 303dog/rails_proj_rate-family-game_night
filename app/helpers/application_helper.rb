module ApplicationHelper  
    #misc navigation
    def render_navigation
        if session[:user_id]
            link_to "Logout", '/logout', method: "delete"
        else
            link_to("Login", '/login') + link_to('/ Sign up', '/signup') 
        end
    end

    def render_logout
        if session[:user_id]
            link_to "/ Log-out", '/logout', method: "delete"
        else
            ""
        end
    end

    def edit_delete
        if @review.user == current_user
            link_to('  Edit Your Review', edit_review_path)
        else
            ""
        end
    end

    def render_home
        link_to(' Home', '/users')
    end

    def current_users_page
        if current_user
            link_to "My Reviews", '/users/show'
        else
            ""
        end
    end
end





module ApplicationHelper  

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

    def render_home
        link_to(' Home', '/users')
    end
end





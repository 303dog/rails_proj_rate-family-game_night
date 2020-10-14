class SessionsController < ApplicationController
    
    def new 
    end
    
   # def create 
   #     @game = Game.new(game_params)
   #     if @game.save
   #         redirect_to game_path(@game)
   #     else
   #         @error = "Missing Information, Try Again."
   #         render :new
   #     end
   # end
    
    def create 
        user = User.find_by(username: params[:user][:username])
        if  user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id 
            redirect_to reviews_path
        else
            @error = 'Something you entered did not match, try again.'
            render :new
        end
    end

    def omniauth
        user = User.from_omniauth(auth)
        if user.valid?
            session[:user_id] = user.id 
            redirect_to reviews_path
        else
            redirect_to login_path
        end
    end

    def destroy
       session.destroy
       redirect_to users_path
    end 

    protected

    def auth
        request.env['omniauth.auth']
    end


end

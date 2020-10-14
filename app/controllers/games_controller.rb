class GamesController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        @games = Game.alpha_order.all
    end

    def show
        set_game
    end

    def new
        @game = Game.new
    end

    def create 
        @game = Game.new(game_params)
        if @game.save
            redirect_to game_path(@game)
        else
            @error = "Missing Information, Try Again."
            render :new
        end
    end

    def edit 
        set_game
    end

    def update 
        set_game
        @game.update(game_params)
        redirect_to game_path
    end

    private

    def game_params
        params.require(:game).permit(:genre, :theme, :num_of_players, :title, :description)
    end

    def set_game
        @game = Game.find_by_id(params[:id])
    end

end

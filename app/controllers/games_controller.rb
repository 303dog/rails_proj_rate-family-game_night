class GamesController < ApplicationController

    def index
        @games = Game.alpha_order.all
    end

    def show
        @game = Game.find_by_id(params[:id])
    end

    def new
        @game = Game.new
    end

    def create 
        @game = Game.new(game_params)
        if @game.save
            redirect_to game_path(@game)
        else
            render :new
        end
    end

    def edit 
        @game = Game.find_by_id(params[:id])
    end

    def update 
        @game = Game.find_by_id(params[:id])
        @game.update(game_params)
        redirect_to game_path(@game)
    end

    def destroy
        @game.destroy
        redirect_to games_path
    end



    private

    def game_params
        params.require(:game).permit(:genre, :theme, :num_of_players, :title, :description)
    end

end

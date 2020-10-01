class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @game = Game.find_by_id(params[:game_id]) if params[:game_id]
        @review = Review.new
    end

    def create 
        @review = current_user.reviews.build(review_params)
        if @review.save
            redirect_to review_path(@review)
        else
            render :new
        end
    end

    def show
        @review = Review.find_by_id(params[:id])
    end

    def index 
        @reviews = if params[:game_id]
                    Review.find_by_game_id(params[:game_id]).alpha_order
        else
            Review.alpha_order.all
            
        end
    end

    def edit
        @review = Review.find_by_id(params[:id])
        if @review.user == current_user
        @game = @review.game
        end
    end

    def update 
        @review.update(params.require(:review).permit(:label, :summary, :rating, :game_id))
        redirect_to review_path(@review)
    end

    def destroy
        @review.destroy
        redirect_to review_path
    end

 
    private

    def review_params
        params.require(:review).permit(:label, :summary, :rating, :game_id)
    end

    


end

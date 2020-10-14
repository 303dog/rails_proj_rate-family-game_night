class ReviewsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :set_review, only: [:show, :edit, :update, :destroy]

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
    end

    def index 
        @reviews = if params[:game_id]
                    Review.find_by_game_id(params[:game_id]).alpha_order
        else
            Review.alpha_order.all 
        end
    end

    def edit
        if @review.user == current_user
        @game = @review.game
        end
    end

    def update 
        @review.update(review_params)
        redirect_to review_path
    end

    def destroy
        @review.destroy
        redirect_to users_path
    end

 
    private

    def review_params
        params.require(:review).permit(:label, :summary, :rating, :game_id)
    end

    def set_review
        @review = Review.find_by_id(params[:id])
    end
    


end

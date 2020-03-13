class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    authorize @review # pundit authorization

    @game = Game.find(params[:game_id])
    @review.game = @game
    @review.user = current_user

    if @review.save
      redirect_to game_path(@game)
    else
      render 'games/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    authorize @review # pundit authorization
    @game = @review.game
    @review.delete

    redirect_to game_path(@game)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

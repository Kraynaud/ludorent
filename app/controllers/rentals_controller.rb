class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def show
    # @rental = Rental.find(params[:id])
    # @game = @rental.game
    # @user = @game.user
  end

  def new
    @game = Game.find(params[:game_id])
    @user = @game.user
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @game = Game.find(params[:game_id])
    @user = @game.user
    @rental.game = @game
    if @rental.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    Rental.find(params[:id]).delete
    redirect_to dashboard_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end

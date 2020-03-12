require 'date'

class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
    authorize @rental # pundit authorization
    @game = @rental.game
    @user = @game.user
  end

  def new
    @game = Game.find(params[:game_id])
    authorize @game # pundit authorization
    @user = @game.user
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    authorize @rental # pundit authorization
    @game = Game.find(params[:game_id])
    @rental.user = current_user
    @rental.game = @game
    init_total_price
    if @rental.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    authorize @rental # pundit authorization
    @rental.delete
    redirect_to dashboard_path
  end

  private

  def init_total_price
    @days = (@rental.end_date - @rental.start_date).to_i + 1
    @rental.total_price = @days * @game.price_per_day
  end

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end

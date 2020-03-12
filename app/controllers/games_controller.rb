class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @games = Game.all
    @games = policy_scope(Game)
  end

  def show
    @game = Game.find(params[:id])
    authorize @game # pundit authorization
    @user = @game.user
  end

  def new
    @game = Game.new
    authorize @game # pundit authorization
  end

  def create
    @game = Game.new(game_params)
    authorize @game # pundit authorization
    @game.user = current_user
    if @game.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
    authorize @game # pundit authorization
  end

  def update
    @game = Game.find(params[:id])
    authorize @game # pundit authorization
    @game.update(game_params)

    redirect_to dashboard_path
  end

  def destroy
    @game = Game.find(params[:id])
    authorize @game # pundit authorization
    @game.delete

    redirect_to dashboard_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :address, :age_limit, :duration, :number_players, :price_per_day, :photo)
  end
end

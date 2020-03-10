class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show

  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end

  def destroy
    Game.find(params[:id]).delete
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :age_limit, :duration, :duration, :number_players, :price_per_day, :photo)
  end
end

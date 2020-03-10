class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @user = @game.user
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.find(params[:id])
    @game.save
  end

  def destroy
    Game.find(params[:id]).delete
  end
end

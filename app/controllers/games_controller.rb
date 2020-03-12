class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    #@user = Game.user
    @games = Game.all
    @markers = @games.map do |game|
      {
        lat: game.latitude,
        lng: game.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { game: game }),
        image_url: helpers.asset_url('avatardebase.png')
      }
    end
  end

  def show
    @game = Game.find(params[:id])
    @user = @game.user
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)

    redirect_to dashboard_path
  end

  def destroy
    Game.find(params[:id]).delete
    redirect_to dashboard_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :address, :age_limit, :duration, :number_players, :price_per_day, :photo)
  end
end


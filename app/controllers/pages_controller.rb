class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @my_games = current_user.games
    @my_rentals = current_user.rentals
  end
end

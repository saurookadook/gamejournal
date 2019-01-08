class GamesController < ApplicationController
  before_action :set_user!

  def index
    @games = Game.all

    if @user
      @games ||= @user.games
    end
  end

  def show
    @games ||= @user.owned_games
  end
end

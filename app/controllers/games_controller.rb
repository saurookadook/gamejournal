class GamesController < ApplicationControllerf
  before_action :set_user!

  def index
    @games = Game.all

    if @user
      @games ||= @user.games
    end
  end
end

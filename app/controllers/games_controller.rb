class GamesController < ApplicationController
  before_action :set_user!
  before_action :set_game!, only: [:show, :edit, :update]

  def index
    if @user
      @games ||= @user.owned_games
    else
      @games ||= Games.all
    end
  end

  def show
    @games ||= @user.owned_games
  end

  def new
    if current_user
      @owned_game = current_user.owned_games.build
      @owned_game.build_game
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def game_params
    params.require(:game)
  end
end

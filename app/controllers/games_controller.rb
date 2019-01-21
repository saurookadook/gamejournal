class GamesController < ApplicationController
  before_action :set_user!
  before_action :set_game!, only: [:show, :edit, :update]

  def index
    if @user == current_user
      @games ||= current_user.owned_games
    elsif @user
      @games ||= @user.owned_games
    else
      @games ||= Game.all
    end
  end

  def show
    @games ||= @user.owned_games
  end

  def new
    if current_user
      @owned_game = current_user.owned_games.build
    end
  end

  def create
    if current_user
      @owned_game = current_user.owned_games.build(owned_game_params)

      # TODO: refactor into helper method?
      if @owned_game.game.valid?
        @owned_game.game.save
      end

      if @owned_game.valid?
        @owned_game.save
      end

      redirect_to user_owned_games_path(current_user)
    end
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def owned_game_params
    params.require(:owned_game).permit(:notes, :user_id, 
      game_attributes: [:title, :publisher, :summary]
    )
  end
end

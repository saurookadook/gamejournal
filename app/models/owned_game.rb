class OwnedGame < ApplicationRecord
  attr_reader :title, :summary, :publisher
  
  belongs_to :game
  belongs_to :user

  has_many :owned_game_platforms
  has_many :platforms, through: :owned_game_platforms

  # Set custom readers to get info shared from associated Game
  def title
    self.game.title
  end

  def summary
    self.game.summary
  end

  def publisher
    self.game.publisher
  end
end

class Game < ApplicationRecord

  has_many :user_games
  has_many :users, through: :user_games

  has_many :game_genres
  has_many :genres, through: :game_genres

  has_many :game_platforms
  has_many :platforms, through: :game_platforms
end

class Game < ApplicationRecord
  attr_reader :display_attributes
  
  has_many :game_genres
  has_many :genres, through: :game_genres

  has_many :game_platforms
  has_many :platforms, through: :game_platforms

  # Custom methods
  def display_attributes
    { 
      Title: self.title,
      Platforms: self.display_platforms,
      Publisher: self.publisher,
      Summary: self.summary
    }
  end

  def display_platforms
    self.platforms.map {|platform| platform.name}.join(', ')
  end
end

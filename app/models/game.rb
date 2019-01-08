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
      Summary: self.summary, 
      Publisher: self.publisher 
    }
  end

end

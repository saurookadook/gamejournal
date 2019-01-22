class Game < ApplicationRecord
  attr_reader :display_attributes
  
  has_many :game_genres
  has_many :genres, through: :game_genres

  has_many :game_platforms
  has_many :platforms, through: :game_platforms

  validates :title, :publisher, presence: true

  # Custom methods
  def display_attributes
    { 
      Platforms: self.display_platforms,
      Summary: self.summary
    }
  end

  def display_platforms
    self.platforms.map {|platform| platform.name}.join(', ')
  end
end

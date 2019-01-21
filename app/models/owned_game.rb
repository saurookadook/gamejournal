class OwnedGame < ApplicationRecord
  # attr_reader :title, :summary, :publisher, :display_attributes # TODO: refactor :owned_platforms?

  belongs_to :game
  belongs_to :user

  has_many :owned_game_platforms
  has_many :platforms, through: :owned_game_platforms

  accepts_nested_attributes_for :game

  # Set custom readers to get info shared from associated Game
  def title
    # binding.pry
    self.game.title
  end

  def summary
    self.game.summary
  end

  def publisher
    self.game.publisher
  end

  def display_attributes
    @attrs = self.game.display_attributes

    if self.platforms
      @attrs[:Platforms] = self.platforms.map {|platform| platform.name}.join(', ')
    end

    if self.notes
      @attrs[:Notes] = self.notes
    end

    @attrs
  end

  ## TODO: refactor?
  # def owned_platforms
  #   self.owned_game_platforms
  # end
end

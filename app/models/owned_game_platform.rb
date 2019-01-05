class OwnedGamePlatform < ApplicationRecord
  belongs_to :owned_game
  belongs_to :platform
end

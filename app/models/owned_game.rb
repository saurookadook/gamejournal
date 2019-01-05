class OwnedGame < Game
  
  belongs_to :user

  has_many :owned_game_platforms
  has_many :platforms, through: :owned_game_platforms
end

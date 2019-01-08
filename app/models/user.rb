class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_games
  has_many :games, through: :owned_games

  has_many :user_platforms
  has_many :platforms, through: :user_platforms

end

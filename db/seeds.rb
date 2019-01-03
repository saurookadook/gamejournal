# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "saurookadook", email: "maskiella@gmail.com", password: "ilovecatz")
user2 = User.create(username: "HerpDerpSean", email: "slewis@bostonphil.org", password: "imrealdumb")
user3 = User.create(username: "JasmineDragon92", email: "jackie.dreher@gmail.com", password: "meowmeow")


platforms_list = [
  { name: "Steam", description: ''},
  { name: "PS4", description: ''},
  { name: "XboxOne", description: ''},
  { name: "Nintendo 3DS", description: ''},
  { name: "Nintendo Switch", description: ''},
  { name: "PS3", description: ''},
  { name: "Xbox360", description: ''},
  { name: "Nintendo DS", description: ''},
  { name: "Nintendo WiiU", description: ''},
  { name: "Mobile", description: ''}
]

platforms_list.each do |platform_hash|
  Platform.create(platform_hash)
  # p = Platform.new
  # p.name = name
  # p.save
end

genres_list = [
  { name: "Action", description: ''},
  { name: "Adventure", description: ''},
  { name: "MMO", description: ''},
  { name: "RPG", description: ''},
  { name: "Simulation", description: ''},
  { name: "Strategy", description: ''}
]

genres_list.each do |genre_hash|
  Genre.create(genre_hash)
  # p = Genre.new
  # p.name = name
  # p.save
end

games_list = [
  { title: "Hearthstone", notes: "Cubelock op...." },
  { title: "Hearthstone", notes: "All of my decks are terrible. Halp!" }
]

games_list.each do |game_hash|
  Game.create(game_hash)
end

# game7 = Game.new(title: "Hearthstone", notes: "Cubelock op....")
# game8 = Game.new(title: "Hearthstone", notes: "All of my decks are terrible. Halp!")
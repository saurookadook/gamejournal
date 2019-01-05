# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

### Users ###
user1 = User.create(username: "saurookadook", email: "maskiella@gmail.com", password: "ilovecatz")
user2 = User.create(username: "HerpDerpSean", email: "slewis@bostonphil.org", password: "imrealdumb")
user3 = User.create(username: "JasmineDragon92", email: "jackie.dreher@gmail.com", password: "meowmeow")


### Platforms ###
platform1 = Platform.create( name: "Steam", description: '' )
platform2 = Platform.create( name: "PS4", description: '' )
platform3 = Platform.create( name: "XboxOne", description: '' )
platform4 = Platform.create( name: "Nintendo Switch", description: '' )
platform5 = Platform.create( name: "Nintendo 3DS", description: '' )
platform6 = Platform.create( name: "PS3", description: '' )
platform7 = Platform.create( name: "Xbox360", description: '' )
platform8 = Platform.create( name: "Nintendo DS", description: '' )
platform9 = Platform.create( name: "Nintendo WiiU", description: '' )
platform10 = Platform.create( name: "Mobile", description: '' )


### Genres ###
genre1 = Genre.create( name: "Action", description: '' )
genre2 = Genre.create( name: "Adventure", description: '' )
genre3 = Genre.create( name: "MMO", description: '' )
genre4 = Genre.create( name: "RPG", description: '' )
genre5 = Genre.create( name: "Simulation", description: '' )
genre6 = Genre.create( name: "Strategy", description: '' )


### Games ###
game1 = Game.create( title: "Hearthstone", summary: "Blizzard's virtual card game based on World of Warcraft" )
game2 = Game.create( title: "Moonlighter", summary: "Aniaml Crossing meets old-school Legend of Zelda" )
game3 = Game.create( title: "Skyrim", summary: "One of Bethesda's masterpieces" )
game4 = Game.create( title: "Diablo III", summary: "Blizzard's latest dungeon-crawler" )
game5 = Game.create( title: "The Legend of Zelda: Breath of the Wild", summary: "A goddamn masterpiece" )
game6 = Game.create( title: "Fire Emblem: Awakening", summary: "Perma-death strategry game")


### Games (global) ###
game1.platforms << platform10
game1.genres << genre6
game1.save if game1.valid?

game2.platforms.push(*[platform1, platform2, platform3, platform4])
game2.genres.push(*[genre1, genre2, genre4, genre5])
game2.save if game2.valid?

game3.platforms.push(*[platform1, platform2, platform3, platform4, platform6, platform7])
game3.genres.push(*[genre1, genre2, genre4])
game3.save if game3.valid?

game4.platforms.push(*[platform1, platform2, platform3, platform4])
game4.genres.push(*[genre2, genre4])
game4.save if game4.valid?

game5.platforms << platform4
game5.genres.push(*[genre1, genre2, genre4])
game5.save if game5.valid?

game6.platforms << platform5
game6.genres.push(*[genre4, genre6])
game6.save if game6.valid?


### Collections ###
user1.platforms.push(*[platform1, platform2, platform4, platform5, platform8, platform9, platform10])

# { title: "Hearthstone", notes: "Cubelock op...." },
# { title: "Hearthstone", notes: "All of my decks are terrible. Halp!" }
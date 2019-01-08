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
platform11 = Platform.create( name: "Computer", description: '' )


### Genres ###
genre1 = Genre.create( name: "Action", description: '' )
genre2 = Genre.create( name: "Adventure", description: '' )
genre3 = Genre.create( name: "MMO", description: '' )
genre4 = Genre.create( name: "RPG", description: '' )
genre5 = Genre.create( name: "Simulation", description: '' )
genre6 = Genre.create( name: "Strategy", description: '' )
genre7 = Genre.create( name: "Card game", description: '' )


### Games ###
game1 = Game.create( title: "Hearthstone", summary: "Blizzard's virtual card game based on World of Warcraft" )
game2 = Game.create( title: "Moonlighter", summary: "Aniaml Crossing meets old-school Legend of Zelda" )
game3 = Game.create( title: "Skyrim", summary: "One of Bethesda's masterpieces" )
game4 = Game.create( title: "Diablo III", summary: "Blizzard's latest dungeon-crawler" )
game5 = Game.create( title: "The Legend of Zelda: Breath of the Wild", summary: "A goddamn masterpiece" )
game6 = Game.create( title: "Fire Emblem: Awakening", summary: "Perma-death strategry game")
game7 = Game.create( title: "Ikamen Sengoku", summary: "Jackie's favorite game, probably not spelled correctly" )


### Games (global) ###
game1.platforms.push(*[platform10, platform11])
game1.genres.push(*[genre6, genre7])
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
# User: saurookadook
user1.platforms.push(*[platform1, platform2, platform4, platform5, platform8, platform9, platform10, platform11])

u1_owned_game1 = user1.owned_games.build(game_id: 1, user_id: 1, notes: "Fun game to play while I'm poopin")
u1_owned_game1.platforms.push(*[platform10, platform11])
u1_owned_game1.save if u1_owned_game1.valid?

u1_owned_game2 = user1.owned_games.build(game_id: 2, user_id: 1, notes: "God, so addicting. Also: definitely need to use the bow for the 3rd boss")
u1_owned_game2.platforms << platform4
u1_owned_game2.save if u1_owned_game2.valid?

u1_owned_game3 = user3.owned_games.build(game_id: 3, user_id: 1, notes: "I've played this game WAY too much....")
u1_owned_game3.platforms.push(*[platform1, platform2])
u1_owned_game3.save if u1_owned_game3.valid?

u1_owned_game4 = user1.owned_games.build(game_id: game4.id, notes: '')
u1_owned_game4.platforms.push(*[platform2, platform4, platform11])
u1_owned_game4.save if u1_owned_game4.valid?

u1_owned_game5 = user1.owned_games.build(game_id: game5.id, notes: '')
u1_owned_game5.platforms.push << platform4
u1_owned_game5.save if u1_owned_game5.valid?

u1_owned_game6 = user1.owned_games.build(game_id: game6.id, notes: '')
u1_owned_game6.platforms << platform5
u1_owned_game6.save if u1_owned_game6.valid?


# User: HerpDerpSean
user2.platforms.push(*[platform10, platform11])


# User: JasmineDragon92
user3.platforms.push(*[platform1, platform2, platform3, platform4, platform5, platform8, platform9, platform10, platform11])
u3_owned_game1 = user3.owned_games.build(game_id: game3.id, user_id: 3, notes: "The VR version!!!!")
u3_owned_game1.platforms.push(*[platform2, platform4])
u3_owned_game1.save if u3_owned_game1.valid?

u3_owned_game2 = user3.owned_games.build(game_id: game7.id, notes: "I LOVE THIS GAME SO MUCH!!!!!!!!!!!!!!!")
u3_owned_game2.platforms << platform11
u3_owned_game2.save if u3_owned_game2.valid?
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Destroy all database of Users and Games...'
Game.destroy_all
User.destroy_all

puts 'Creating some users...'


file_1 = URI.open('https://img.static-rmg.be/a/view/q100/w/h450/1570130/zorro.jpg')
file_2 = URI.open('https://vignette.wikia.nocookie.net/librerte/images/4/44/1200x630bb.jpg/revision/latest?cb=20190904083842&path-prefix=fr')
file_3 = URI.open('https://risibank.fr/cache/stickers/d1503/150349-full.png')

user1 = User.new({first_name: "Matti", last_name: "Benoliel", email: "mattib@gmail.com", password: "ilikenobes" })
user1.photo.attach(io: file_1, filename: 'matti.jpg', content_type: 'image/jpg')
user1.save!

user2 = User.new({first_name: "Thibault", last_name: "Adet", email: "thibaulta@gmail.com", password: "vfvfvfvfv" })
user2.photo.attach(io: file_2, filename: 'thibault.jpg', content_type: 'image/jpg')
user2.save!

user3 = User.new({first_name: "Theo", last_name: "Bondz", email: "theob@gmail.com", password: "azdazdazd" })
user3.photo.attach(io: file_3, filename: 'theo.png', content_type: 'image/png')
user3.save!

puts "#{User.count} users have been created !"

puts 'Creating some games...'

file_4 = URI.open('https://i.ebayimg.com/images/g/tzYAAOSwqNxeD08j/s-l400.jpg')
game_1 = Game.new({
  name: "Risk GOT",
  description: "Risk game of thrones version",
  price_per_day: 10,
  number_players: 7,
  duration: 120,
  age_limit: 18,
  address: "167 rue paradis 13008 Marseille",
  user_id: user1.id
})
game_1.photo.attach(io: file_4, filename: 'riskgot.jpg', content_type: 'image/jpg')
game_1.save!

file_5 = URI.open('https://static.fnac-static.com/multimedia/Images/FR/MDM/5f/2b/38/3681119/1505-1/tsp20200227140744/Jeu-de-strategie-Hasbro-Risk.jpg')
game_2 = Game.new({
  name: "Risk normal",
  description: "Risk d'origine",
  price_per_day: 8,
  number_players: 6,
  duration: 120,
  age_limit: 18,
  address: "22 Rue du Débarcadère 75017 Paris",
  user_id: user1.id
})
game_2.photo.attach(io: file_5, filename: 'risk.jpg', content_type: 'image/jpg')
game_2.save!

file_6 = URI.open('https://images-na.ssl-images-amazon.com/images/I/81G3u55HEHL._AC_SX425_.jpg')
game_3 = Game.new({
  name: "Catan",
  description: "Jeu de stratégie et développement",
  price_per_day: 6,
  number_players: 4,
  duration: 90,
  age_limit: 10,
  address: "41 Quai de Pierre-Scize, 69009 Lyon",
  user_id: user2.id
})
game_3.photo.attach(io: file_6, filename: 'catan.jpg', content_type: 'image/jpg')
game_3.save!

file_7 = URI.open('https://cdn03.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_Uno_image1600w.jpg')
game_4 = Game.new({
  name: "Uno",
  description: "Uno version spéciale",
  price_per_day: 5,
  number_players: 8,
  duration: 30,
  age_limit: 7,
  address: "547 route de la Césarde, 13480 Cabries",
  user_id: user2.id
})
game_4.photo.attach(io: file_7, filename: 'uno.jpg', content_type: 'image/jpg')
game_4.save!

file_8 = URI.open('https://www.bcd-jeux.fr/15456-large_default/gloomhaven-aventures-a-havrenuit-cephalofair-games.jpg')
game_5 = Game.new({
  name: "Gloomhaven",
  description: "Version de base super stratégie",
  price_per_day: 12,
  number_players: 6,
  duration: 120,
  age_limit: 18,
  address: "29 rue Casteres, 92110 CLichy-La-Garenne",
  user_id: user3.id
})
game_5.photo.attach(io: file_8, filename: 'gloom.jpg', content_type: 'image/jpg')
game_5.save!

file_9 = URI.open('https://joueclub-joueclub-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/0/0/ab604adb4048b09fc0b927377713b5100d4075ba_68629.jpeg')
game_6 = Game.new({
  name: "Burger Quizz",
  description: "Uno version spéciale",
  price_per_day: 6,
  number_players: 4,
  duration: 45,
  age_limit: 7,
  address: "37, rue Hugueny 13005 Marseille",
  user_id: user3.id
})
game_6.photo.attach(io: file_9, filename: 'burger.jpg', content_type: 'image/jpg')
game_6.save!

file_10 = URI.open('https://www.gazette-du-sorcier.com/wp-content/uploads/2019/11/jpg_trivial-hp1j8dae.jpg')
game_7 = Game.new({
  name: "Trivial pursuit",
  description: "Version spéciale Harry Potter",
  price_per_day: 9,
  number_players: 6,
  duration: 120,
  age_limit: 10,
  address: "14 chemin de l'huilerie 74000 Annecy",
  user_id: user3.id
})
game_7.photo.attach(io: file_10, filename: 'hp.jpg', content_type: 'image/jpg')
game_7.save!

puts "#{Game.count} games have been created !"

# Game.new([{
#   name: "Ant-Man",
#   description: "Armed with the astonishing ability to shrink in scale",
#   price_per_day: 5,
#   number_players: 4,
#   duration: 30,s
#   age_limit: 10,
#   user_id: user.id
# },
# {
#   name: "Pixels",
#   description: "Armed with the astonishing ability to shrink in scale",
#   price_per_day: 10,
#   number_players: 8,
#   duration: 45,
#   age_limit: 15,
#   user_id: user.id
# },
# {
#   name: "Terminator Genisys",
#   description: "Armed with the astonishing ability to shrink in scale",
#   price_per_day: 7,
#   number_players: 2,
#   duration: 15,
#   age_limit: 5,
#   user_id: user.id
# }])

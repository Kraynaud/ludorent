# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Game.destroy_all

User.destroy_all

file_1 = URI.open('https://avatars3.githubusercontent.com/u/58363552?s=460&v=4')
user = User.new({first_name: "Kevin", last_name: "Raynaud", email: "myemal@ddedede.com", password: "ilikenobes" })
user.photo.attach(io: file_1, filename: 'kevin.png', content_type: 'image/png')
user.save!

file_2 = URI.open('https://www.claires.com/dw/image/v2/BBTK_PRD/on/demandware.static/-/Sites-master-catalog/default/dw1e4374e5/images/hi-res/65079_1.jpg?sw=734&sh=734&sm=fit')
game_1 = Game.new({
  name: "Ant-Man",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 5,
  number_players: 4,
  duration: 30,s
  age_limit: 10,
  user_id: user.id
})
game_1.photo.attach(io: file_2, filename: 'uno.png', content_type: 'image/png')
game_1.save!

game_2 = Game.new({
  name: "Pixels",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 10,
  number_players: 8,
  duration: 45,
  age_limit: 15,
  user_id: user.id
})
game_2.photo.attach(io: file_2, filename: 'uno.png', content_type: 'image/png')
game_2.save!

game_3 = Game.new({
  name: "Terminator Genisys",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 7,
  number_players: 2,
  duration: 15,
  age_limit: 5,
  user_id: user.id
})
game_3.photo.attach(io: file_2, filename: 'uno.png', content_type: 'image/png')
game_3.save!

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

puts "3 games created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all

User.destroy_all


user = User.create!({first_name: "Kevin", last_name: "Raynaud", email: "myemal@ddedede.com", password: "ilikenobes"})

Game.create!([{
  name: "Ant-Man",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 5,
  number_players: 4,
  duration: 30,
  age_limit: 10,
  user_id: user.id
},
{
  name: "Pixels",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 10,
  number_players: 8,
  duration: 45,
  age_limit: 15,
  user_id: user.id
},
{
  name: "Terminator Genisys",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 7,
  number_players: 2,
  duration: 15,
  age_limit: 5,
  user_id: user.id
}])

puts "3 games created"

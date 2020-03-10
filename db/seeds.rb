# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create!({first_name: "Kevin", last_name: "Raynaud", email: "myemal@ddedede.com", password: "ilikenobes"})

Game.destroy_all

Game.create!([{
  name: "Ant-Man",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 26,
  user_id: 1
},
{
  name: "Pixels",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 26,
  user_id: 1
},
{
  name: "Terminator Genisys",
  description: "Armed with the astonishing ability to shrink in scale",
  price_per_day: 26,
  user_id: 1
}])

puts "3 games created"

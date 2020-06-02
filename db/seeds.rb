# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: "Mario")
Category.create(name: "Zelda")
Category.create(name: "Donkey Kong")
Category.create(name: "Sonic")
Category.create(name: "God of War")
Category.create(name: "Pokemon")
Category.create(name: "Pac-man")
Category.create(name: "Halo")
Category.create(name: "Final Fantasy")
Category.create(name: "GTA")
Category.create(name: "Mortal Kombat")
Category.create(name: "Minecraft")
Category.create(name: "Counter Strike")
Category.create(name: "Metal Gear Solid")


20.times do
  Item.create(name: "XXX", price: "100", description: "XXX", category_id: 1)
end

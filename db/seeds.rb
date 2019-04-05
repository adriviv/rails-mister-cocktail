Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

10.times do

  Cocktail.create!(name:"mojito")


Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")

Dose.create!(description: "3cl:", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

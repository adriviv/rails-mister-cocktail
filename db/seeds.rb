

Cocktail.create!(name:"mojito")


Dose.create!(description: "Your cocktail gonna contain:", cocktail_id: "1")

Ingredient.create!(name: "lemon", dose_id: "1")
Ingredient.create!(name: "ice", dose_id: "1")
Ingredient.create!(name: "mint leaves", dose_id: "1")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

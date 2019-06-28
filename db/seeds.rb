# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  require 'open-uri'
  require 'json'

  ingredients = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
  json = JSON.parse(ingredients.read)


puts "starting"

json["drinks"].each do |ingredient_name|
  Ingredient.create(name: ingredient_name["strIngredient1"])
end

puts "did that work?"

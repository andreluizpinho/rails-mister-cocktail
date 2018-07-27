# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#require 'open-uri'

#puts "Destroy ingredients"
#Ingredient.destroy_all if Rails.env.development?

#puts "Destroy Cocktails"
#Cocktail.destroy_all if Rails.env.development?

#puts "Create ingredients"
#url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
#ingredients = JSON.parse(open(url).read)
#ingredients["drinks"].each do |ingredient|
#  i = Ingredient.create(name: ingredient["strIngredient1"])
#  puts "create #{i.name}"
#end

lime = Ingredient.create!(name: 'lime')
ice = Ingredient.create!(name: 'ice')
mé = Ingredient.create!(name: 'cachaça')
rum = Ingredient.create!(name: 'rum')
mint = Ingredient.create!(name: 'mint leaves')
sugar = Ingredient.create!(name: 'sugar')

caipirinha = Cocktail.create!(name: 'Caipirinha')
mojito = Cocktail.create!(name: 'Mojito')

Dose.create!(cocktail: caipirinha, ingredient: lime, description: 'limão')
Dose.create!(cocktail: caipirinha, ingredient: ice, description: 'gelo')
Dose.create!(cocktail: caipirinha, ingredient: mé, description: 'pinga da boa')
Dose.create!(cocktail: caipirinha, ingredient: sugar, description: 'açúcar')
Dose.create!(cocktail: mojito, ingredient: lime, description: 'limão')
Dose.create!(cocktail: mojito, ingredient: ice, description: 'gelo')
Dose.create!(cocktail: mojito, ingredient: rum, description: 'rum do pirata')
Dose.create!(cocktail: mojito, ingredient: sugar, description: 'açúcar')
Dose.create!(cocktail: mojito, ingredient: mint, description: 'folhinha de hortelã')









#{"drinks":[{"strIngredient1":"Light rum"},{"strIngredient1":"Applejack"},
# ....{"strIngredient1":"Rye whiskey"}]}

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all
Ingredient.destroy_all

dumpling = Recipe.create!(name: "Dumpling", img_url: "http://i.imgur.com/2QEyXyF.jpg")
charcuterie = Recipe.create!(name: "Charcuterie Plate", img_url: "http://i.imgur.com/N5tiQuJ.jpg")
pokpok = Recipe.create(name: "Pokpok", img_url: "http://i.imgur.com/RYkwaTY.jpg")

groundpork = Ingredient.create(name: "Groundpork", recipe_id: dumpling.id)
dumplingwrapper = Ingredient.create(name: "Dumplingwrapper", recipe_id: dumpling.id)
soysauce = Ingredient.create(name: "Soysauce", recipe_id: dumpling.id)
ginger = Ingredient.create(name: "Ginger", recipe_id: dumpling.id)
sesameoil = Ingredient.create(name: "Sesameoil", recipe_id: dumpling.id)

sausicon = Ingredient.create(name: "Sausicon", recipe_id: charcuterie.id)
cheese = Ingredient.create(name: "Cheese", recipe_id: charcuterie.id)
olive = Ingredient.create(name: "Olive", recipe_id: charcuterie.id)
grape = Ingredient.create(name: "Grape", recipe_id: charcuterie.id)
apple = Ingredient.create(name: "Apple", recipe_id: charcuterie.id)

chickenwings = Ingredient.create(name: "Chickenwings", recipe_id: pokpok.id)
garlic = Ingredient.create(name: "Garlic", recipe_id: pokpok.id)
flour = Ingredient.create(name: "Flour", recipe_id: pokpok.id)
oil = Ingredient.create(name: "Oil", recipe_id: pokpok.id)
fishsauce = Ingredient.create(name: "Fishsauce", recipe_id: pokpok.id)
sugar = Ingredient.create(name: "Sugar", recipe_id: pokpok.id)
water = Ingredient.create(name: "Water", recipe_id: pokpok.id)
salt = Ingredient.create(name: "Salt", recipe_id: pokpok.id)
#User.create(username: "me", password:"12345")
#Recipe.create!(name:'my recipe', user: User.last)

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


groundpork = Ingredient.new(name: "Groundpork")
groundpork.recipe = dumpling
groundpork.save
dumplingwrapper = Ingredient.new(name: "Dumplingwrapper")
dumplingwrapper.recipe = dumpling
dumpling.save
soysauce = Ingredient.new(name: "Soysauce")
soysauce.recipe = dumpling
soysauce.save
ginger = Ingredient.new(name: "Ginger")
ginger.recipe = dumpling
ginger.save
sesameoil = Ingredient.new(name: "Sesameoil")
sesameoil.recipe = dumpling
sesameoil.save

sausicon = Ingredient.new(name: "Sausicon")
sausicon.recipe = charcuterie
sausicon.save
cheese = Ingredient.new(name: "Cheese")
cheese.recipe = charcuterie
cheese.save
olive = Ingredient.new(name: "Olive")
olive.recipe = charcuterie
olive.save
grape = Ingredient.new(name: "Grape")
grape.recipe = charcuterie
grape.save
apple = Ingredient.new(name: "Apple")
apple.recipe = charcuterie
apple.save

chickenwings = Ingredient.new(name: "Chickenwigs")
chickenwings.recipe = pokpok
chickenwings.save
garlic = Ingredient.new(name: "Garlic")
garlic.recipe = pokpok
garlic.save
flour = Ingredient.new(name: "Flour")
flour.recipe = pokpok
flour.save
oil = Ingredient.new(name: "Oil")
oil.recipe = pokpok
oil.save
fishsauce = Ingredient.new(name: "Fishsauce")
fishsauce.recipe = pokpok
fishsauce.save
sugar = Ingredient.new(name: "Sugar")
sugar.recipe = pokpok
sugar.save
water = Ingredient.new(name: "Water")
water.recipe = pokpok
water.save
salt = Ingredient.new(name: "Salt")
salt.recipe = pokpok
salt.save
#User.create(username: "me", password:"12345")
#Recipe.create!(name:'my recipe', user: User.last)

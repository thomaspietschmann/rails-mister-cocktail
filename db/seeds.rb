# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')

Cocktail.destroy_all
Cocktail.create(name: 'Margarita', imgurl: '')
Cocktail.create(name: 'FunFunFun')
Cocktail.create(name: 'Hurricane')

ingredients = Ingredient.all
cocktails = Cocktail.all

Dose.destroy_all

dose = Dose.new(description: '6cl of whatever')
dose.ingredient = ingredients.sample
dose.cocktail = cocktails.sample
dose.save

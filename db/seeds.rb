# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts("Cleaning Database...")
Account.destroy_all!
Meal.destroy_all!
Order.destroy_all!
Review.destroy_all!
User.destroy_all

puts("Creating meals...")
meal1 = Meals.create!(name: "Delicious Babon", description: "I didn't know Portugal shops closed early. The last two days, I got back post 9pm and there aren't many places open. Thankfully yelp came to the rescue with.", grams_per_dose: 500, ingredients: "Maionese, tomato and cheese")
meal2 = Meals.create!(name: "Delicious Lasanha", description: "This is one of the most random reviews ever, but this is the best Chinese food I've ever had. We've been here twice and both times Mr. Lu was here and in the kitchen.", grams_per_dose: 400, ingredients: "Maionese")
meal3 = Meals.create!(name: "Delicious Pasta", description: "what a surprise! I had no high expectation thinking it might be just another so-so Chinese restaurant like others in lisbon. most people came  here for the buffet", grams_per_dose: 300, ingredients: "tomato and cheese")
meal4 = Meals.create!(name: "Great Sushi", description: "I've had Chinese food in 45 states , Toronto and British Columbia  Hands down ... NO JOKE the best DIM SUM and fresh Chinese dishes ever that have crossed my taste buds !!", grams_per_dose: 100, ingredients: "carrot")

puts("Creating user...")
Review.create!(user: User.find(1), meal: Meal.find(1), rating: 3, description: 'That was good enough')
Review.create!(user: User.find(2), meal: Meal.find(2), rating: 2, description: 'That was not good')
Review.create!(user: User.find(3), meal: Meal.find(3), rating: 3, description: 'That was good')
Review.create!(user: User.find(4), meal: Meal.find(4), rating: 4, description: 'That was really good')
Review.create!(user: User.find(5), meal: Meal.find(4), rating: 4, description: 'That was really good')


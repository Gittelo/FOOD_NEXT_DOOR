# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.create!(user: User.find(1), meal: Meal.find(1), rating: 3, description: 'That was good enough')
Review.create!(user: User.find(2), meal: Meal.find(2), rating: 2, description: 'That was not good')
Review.create!(user: User.find(3), meal: Meal.find(3), rating: 3, description: 'That was good')
Review.create!(user: User.find(4), meal: Meal.find(4), rating: 4, description: 'That was really good')
Review.create!(user: User.find(5), meal: Meal.find(4), rating: 4, description: 'That was really good')

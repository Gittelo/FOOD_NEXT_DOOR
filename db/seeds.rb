# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
order1 = Order.create!(user: User.find(1), meal: Meal.find(1), status: 0, doses: 2)
order2 = Order.create!(user: User.find(2), meal: Meal.find(2), status: 1, doses: 4)
order3 = Order.create!(user: User.find(3), meal: Meal.find(3), status: 2, doses: 1)
order4 = Order.create!(user: User.find(4), meal: Meal.find(4), status: 3, doses: 5)
order5 = Order.create!(user: User.find(5), meal: Meal.find(3), status: 2, doses: 3)



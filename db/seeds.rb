require 'faker'

Item.destroy_all
Order.destroy_all
Review.destroy_all
User.destroy_all
Account.destroy_all
Meal.destroy_all
WeekDay.destroy_all

puts("Creating Cooks...")
user1 = User.create!(first_name: "Maria",    last_name: "B",  address: "Rua da Moeda 6, Lisboa",               email: "maria@fesf.fr",     password: "123456", cook_status: 1)
user2 = User.create!(first_name: "Marta",    last_name: "C",  address: "Rua de São Marçal 170, Lisboa",        email: "marta@fesf.fr",     password: "123456", cook_status: 1)
user3 = User.create!(first_name: "Pedro",    last_name: "F",  address: "Rua da Vitória 4, Lisboa",             email: "pedro@fesf.fr",     password: "123456", cook_status: 1)
user4 = User.create!(first_name: "Joana",    last_name: "R",  address: "Avenida de Roma 39, Lisboa",           email: "joana@fesf.fr",     password: "123456", cook_status: 1)
user5 = User.create!(first_name: "Vasco",    last_name: "C",  address: "Avenida São João de Deus 35, Lisboa",  email: "vasco@fesf.fr",     password: "123456", cook_status: 1)

puts("Creating Users...")
user6  = User.create!(first_name: "Diogo",    last_name: "R",  address: "Avenida da Igreja 28, Lisboa",         email: "diogo@fesf.fr",    password: "123456", cook_status: 0)
user7  = User.create!(first_name: "Ana",      last_name: "M",  address: "Rua Alexandre Herculano 2, Lisboa",    email: "ana@fesf.fr",      password: "123456", cook_status: 0)
user8  = User.create!(first_name: "Catarina", last_name: "V",  address: "Avenida Elias Garcia 76, Lisboa",      email: "catarina@fesf.fr", password: "123456", cook_status: 0)
user9  = User.create!(first_name: "Rute",     last_name: "A",  address: "Rua da Penha de França 94, Lisboa",    email: "rute@fesf.fr",     password: "123456", cook_status: 0)
user10 = User.create!(first_name: "Manuel",   last_name: "M",  address: "Avenida da Liberdade 2, Lisboa",       email: "manuel@fesf.fr",   password: "123456", cook_status: 0)
user11 = User.create!(first_name: "Sara",     last_name: "G",  address: "Avenida do Brasil 30, Lisboa",         email: "sara@fesf.fr",     password: "123456", cook_status: 0)


puts("Creating Meals...")

meal1  = Meal.create!(cook: user1, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 200, ingredients: Faker::Food.ingredient, price: 7.5, address: "Rua da Moeda 6, Lisboa",              photo: 'https://s33.postimg.cc/gk6sxubpb/Balls_Pigale-12.jpg')
meal2  = Meal.create!(cook: user1, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 300, ingredients: Faker::Food.ingredient, price: 5.9, address: "Rua da Moeda 6, Lisboa",              photo: 'https://s33.postimg.cc/t1dgl2c0v/BIIIM_Kardashian.jpg')
meal3  = Meal.create!(cook: user1, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 240, ingredients: Faker::Food.ingredient, price: 4.0, address: "Rua da Moeda 6, Lisboa",              photo: 'https://s33.postimg.cc/t1dgl2c0v/BIIIM_Kardashian.jpg')

meal4  = Meal.create!(cook: user2, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 250, ingredients: Faker::Food.ingredient, price: 4.0, address: "Rua de São Marçal 170, Lisboa",       photo: 'https://images.unsplash.com/photo-1503764654157-72d979d9af2f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=71cdddf5cc615224cf2c26614d20154d&auto=format&fit=crop&w=2553&q=80')
meal5  = Meal.create!(cook: user2, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 200, ingredients: Faker::Food.ingredient, price: 2.9, address: "Rua de São Marçal 170, Lisboa",       photo: 'https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f791b5847ff52ab502255c37c7e78498&auto=format&fit=crop&w=668&q=80')
meal6  = Meal.create!(cook: user2, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 350, ingredients: Faker::Food.ingredient, price: 3.5, address: "Rua de São Marçal 170, Lisboa",       photo: 'https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f791b5847ff52ab502255c37c7e78498&auto=format&fit=crop&w=668&q=80')

meal7  = Meal.create!(cook: user3, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 350, ingredients: Faker::Food.ingredient, price: 4.0, address: "Rua da Vitória 4, Lisboa",            photo: 'https://images.unsplash.com/photo-1513096010416-a2d75c794cf9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e966da6f823c4750779d8f8a10c6a205&auto=format&fit=crop&w=1302&q=80')
meal8  = Meal.create!(cook: user3, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 400, ingredients: Faker::Food.ingredient, price: 6.5, address: "Rua da Vitória 4, Lisboa",            photo: 'https://images.unsplash.com/photo-1519996409144-56c88c9aa612?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3637911ee7fd91ef9087dae6efc0114f&auto=format&fit=crop&w=668&q=80')
meal9  = Meal.create!(cook: user3, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 200, ingredients: Faker::Food.ingredient, price: 3.5, address: "Rua da Vitória 4, Lisboa",            photo: 'https://images.unsplash.com/photo-1519996409144-56c88c9aa612?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3637911ee7fd91ef9087dae6efc0114f&auto=format&fit=crop&w=668&q=80')

meal10 = Meal.create!(cook: user4, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 250, ingredients: Faker::Food.ingredient, price: 4.9, address: "Avenida de Roma 39, Lisboa",          photo: 'https://images.unsplash.com/photo-1502114586089-b9480c602e18?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2a76f872362e6c5ec393cedd3b098cc2&auto=format&fit=crop&w=668&q=80')
meal11 = Meal.create!(cook: user4, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 300, ingredients: Faker::Food.ingredient, price: 3.5, address: "Avenida de Roma 39, Lisboa",          photo: 'https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixlib=rb-0.3.5&s=0c64f21bce4b02fb267b1900ccc2b523&auto=format&fit=crop&w=938&q=80')
meal12 = Meal.create!(cook: user4, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 150, ingredients: Faker::Food.ingredient, price: 5.0, address: "Avenida de Roma 39, Lisboa",          photo: 'https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixlib=rb-0.3.5&s=0c64f21bce4b02fb267b1900ccc2b523&auto=format&fit=crop&w=938&q=80')

meal13 = Meal.create!(cook: user5, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 300, ingredients: Faker::Food.ingredient, price: 5.0, address: "Avenida São João de Deus 35, Lisboa", photo: 'https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixlib=rb-0.3.5&s=0c64f21bce4b02fb267b1900ccc2b523&auto=format&fit=crop&w=938&q=80')
meal14 = Meal.create!(cook: user5, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 250, ingredients: Faker::Food.ingredient, price: 3.0, address: "Avenida São João de Deus 35, Lisboa", photo: 'https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixlib=rb-0.3.5&s=0c64f21bce4b02fb267b1900ccc2b523&auto=format&fit=crop&w=938&q=80')
meal15 = Meal.create!(cook: user5, name: Faker::Food.unique.dish, description: Faker::Food.description, grams_per_dose: 450, ingredients: Faker::Food.ingredient, price: 4.5, address: "Avenida São João de Deus 35, Lisboa", photo: 'https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixlib=rb-0.3.5&s=0c64f21bce4b02fb267b1900ccc2b523&auto=format&fit=crop&w=938&q=80')


puts("Creating Orders...")
order1 = Order.create!(sku: 'a', user: User.find(6), status: 1, total_price: Money.new(Meal.find(1).price  * 2 + Meal.find(3).price  * 1) + Meal.find(9).price  * 3)
order2 = Order.create!(sku: 'b', user: User.find(7), status: 1, total_price: Money.new(Meal.find(7).price  * 4))
order3 = Order.create!(sku: 'c', user: User.find(8), status: 1, total_price: Money.new(Meal.find(2).price  * 1 + Meal.find(5).price  * 2))
order4 = Order.create!(sku: 'd', user: User.find(9), status: 1, total_price: Money.new(Meal.find(10).price * 2 + Meal.find(4).price  * 2))


puts("Creating Items...")
item1 = Item.create!(order: Order.find(1), meal: Meal.find(1),  doses: 2, item_price: Meal.find(1).price  * 2)
item2 = Item.create!(order: Order.find(1), meal: Meal.find(3),  doses: 1, item_price: Meal.find(3).price  * 1)
item3 = Item.create!(order: Order.find(1), meal: Meal.find(9),  doses: 3, item_price: Meal.find(9).price  * 3)

item4 = Item.create!(order: Order.find(2), meal: Meal.find(7),  doses: 4, item_price: Meal.find(7).price  * 4)

item5 = Item.create!(order: Order.find(3), meal: Meal.find(2),  doses: 1, item_price: Meal.find(2).price  * 1)
item6 = Item.create!(order: Order.find(3), meal: Meal.find(5),  doses: 2, item_price: Meal.find(5).price  * 2)

item7 = Item.create!(order: Order.find(4), meal: Meal.find(10), doses: 2, item_price: Meal.find(10).price * 2)
item8 = Item.create!(order: Order.find(4), meal: Meal.find(4),  doses: 2, item_price: Meal.find(4).price  * 2)


sum = 0
order1.items.each do |item|
  sum += item.item_price
end
puts sum
order1.total_price = sum
puts order1.total_price


puts("Creating Reviews...")
Review.create!(user: User.find(6), meal: Meal.find(1), rating: 3, content: 'That was good enough')
Review.create!(user: User.find(6), meal: Meal.find(2), rating: 1, content: "It's a trap! Don't order this meal!")
Review.create!(user: User.find(7), meal: Meal.find(3), rating: 3, content: "Average meal..")
Review.create!(user: User.find(7), meal: Meal.find(4), rating: 2, content: 'That was not good')
Review.create!(user: User.find(8), meal: Meal.find(5), rating: 4, content: 'That was good')
Review.create!(user: User.find(8), meal: Meal.find(6), rating: 5, content: 'That was really good')
Review.create!(user: User.find(9), meal: Meal.find(7), rating: 5, content: 'That was really good')


puts("Creating Weekdays...")
(14..30).each do |day|
WeekDay.create!(meal: Meal.find(1), pick_up_time_start: Time.zone.local(2018,06,day,21,00,00),
                                    pick_up_time_end:   Time.zone.local(2018,06,day,22,30,00),
                                    last_order_time:    Time.zone.local(2018,06,day,20,00,00),
                                    doses: 5,
                                    date: Date.new(2018,06,day))
WeekDay.create!(meal: Meal.find(2), pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                                    pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
                                    last_order_time:    Time.zone.local(2018,06,day,20,00,00),
                                    doses: 8,
                                    date: Date.new(2018,06,day))
WeekDay.create!(meal: Meal.find(3), pick_up_time_start: Time.zone.local(2018,06,day,20,00,00),
                                    pick_up_time_end:   Time.zone.local(2018,06,day,22,30,00),
                                    last_order_time:    Time.zone.local(2018,06,day,19,30,00),
                                    doses: 4,
                                    date: Date.new(2018,06,day))
WeekDay.create!(meal: Meal.find(4), pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                                    pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
                                    last_order_time:    Time.zone.local(2018,06,day,20,00,00),
                                    doses: 6,
                                    date: Date.new(2018,06,day))
WeekDay.create!(meal: Meal.find(5), pick_up_time_start: Time.zone.local(2018,06,day,22,00,00),
                                    pick_up_time_end:   Time.zone.local(2018,06,day,23,00,00),
                                    last_order_time:    Time.zone.local(2018,06,day,21,00,00),
                                    doses: 7,
                                    date: Date.new(2018,06,day))
WeekDay.create!(meal: Meal.find(6), pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                                    pick_up_time_end:   Time.zone.local(2018,06,day,21,00,00),
                                    last_order_time:    Time.zone.local(2018,06,day,19,00,00),
                                    doses: 3,
                                    date: Date.new(2018,06,day))
puts day
end
# WeekDay.create!(meal: Meal.find(2), pick_up_time_start: Time.zone.local(2018,06,13,18,30,00),
#                                     pick_up_time_end:   Time.zone.local(2018,06,13,20,00,00),
#                                     last_order_time:    Time.zone.local(2018,06,13,12,00,00),
#                                     doses: 2,
#                                     date: Date.new(2018,06,13))
# WeekDay.create!(meal: Meal.find(7), pick_up_time_start: Time.zone.local(2018,06,13,17,30,00),
#                                     pick_up_time_end:   Time.zone.local(2018,06,13,21,00,00),
#                                     last_order_time:    Time.zone.local(2018,06,13,13,30,00),
#                                     doses: 6,
#                                     date: Date.new(2018,06,13))


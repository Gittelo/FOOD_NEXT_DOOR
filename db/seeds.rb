require 'faker'

Item.destroy_all
Order.destroy_all
Review.destroy_all
User.destroy_all
Account.destroy_all
Meal.destroy_all
WeekDay.destroy_all

puts("Creating Cooks...")
user1 = User.create!(first_name: "Maria",    last_name: "Belo",       address: "Rua da Moeda 6, Lisboa",               email: "maria@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSARxPiIB8cCL-xCX9CW9lyOq75poVh842vdlsYfAJEMPj5J4uLyA")
user2 = User.create!(first_name: "Marta",    last_name: "Carmo",      address: "Rua de São Marçal 170, Lisboa",        email: "marta@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "https://avatars2.githubusercontent.com/u/398893?s=400&v=4")
user3 = User.create!(first_name: "Pedro",    last_name: "Fargo",      address: "Rua da Vitória 4, Lisboa",             email: "pedro@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "")
user4 = User.create!(first_name: "Joana",    last_name: "Rosa",       address: "Avenida de Roma 39, Lisboa",           email: "joana@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "")
user5 = User.create!(first_name: "Vasco",    last_name: "Castro",     address: "Avenida São João de Deus 35, Lisboa",  email: "vasco@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "")
userd1 = User.create!(first_name: "Mitch",   last_name: "Rodrigues",  address: "Avenida do Brasil 2, Lisboa",          email: "mitch@gmail.pt",    password: "123456", cook_status: 1, photo_fake: "")
userd2 = User.create!(first_name: "Emanuel", last_name: "Herculano",  address: "R. Vítor Cordon 2-20, Lisboa",         email: "emanuel@gmail.pt",  password: "123456", cook_status: 1, photo_fake: "")
userd3 = User.create!(first_name: "Henrique",last_name: "Sousa",      address: "Rua da Penha de França 1, Lisboa",     email: "henrique@gmail.pt", password: "123456", cook_status: 1, photo_fake: "")

userd4 = User.create!(first_name: "Julia",   last_name: "Martins",    address: "R. Ferragial 33-1, Lisboa",            email: "julia@gmail.pt",    password: "123456", cook_status: 1, photo_fake: "")
userd5 = User.create!(first_name: "Ricardo", last_name: "Lobo",       address: "R. Portas de Santo Antão 5, Lisboa",   email: "ricardo@gmail.pt",  password: "123456", cook_status: 1, photo_fake: "")



puts("Creating Users...")
user6  = User.create!(first_name: "Diogo",    last_name: "Rato",      address: "Avenida da Igreja 28, Lisboa",         email: "diogo@fesf.fr",    password: "123456", cook_status: 0, photo_fake: "")
user7  = User.create!(first_name: "Ana",      last_name: "Mendonça",  address: "Rua Alexandre Herculano 2, Lisboa",    email: "ana@fesf.fr",      password: "123456", cook_status: 0, photo_fake: "")
user8  = User.create!(first_name: "Catarina", last_name: "Vidal",     address: "Avenida Elias Garcia 76, Lisboa",      email: "catarina@fesf.fr", password: "123456", cook_status: 0, photo_fake: "")
user9  = User.create!(first_name: "Rute",     last_name: "Almada",    address: "Rua da Penha de França 94, Lisboa",    email: "rute@fesf.fr",     password: "123456", cook_status: 0, photo_fake: "")
user10 = User.create!(first_name: "Manuel",   last_name: "Morato",    address: "Avenida da Liberdade 2, Lisboa",       email: "manuel@fesf.fr",   password: "123456", cook_status: 0, photo_fake: "")
user11 = User.create!(first_name: "Sara",     last_name: "Guerra",    address: "Avenida do Brasil 30, Lisboa",         email: "sara@fesf.fr",     password: "123456", cook_status: 0, photo_fake: "")


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

meald1 = Meal.create!(cook: userd1,
                      name: "Mirandela's Alheira",
                      description: "The alheira, a type of fowl sausage, is one of the cheapest and most common Portuguese dishes with a fascinating history. When the Jewish population was expelled from Portugal in 1498, many hid in the mountainous region of Trás-os-Montes in the northeast
                                    of Portugal, practising their religion in secret while pretending they had converted to Catholicism. One way to do this was to ostensibly make, display and eat sausages so that everyone would think they were no longer keeping kosher. Nowadays, the dish is available in any corner eatery.",
                      grams_per_dose: 300,
                      ingredients: "Beef, poultry, bread, lard, garlic, paprika,salt, pepper, extra virgin olive oil.",
                      price: 5.5,
                      address: userd1.address,
                      photo: 'https://cdn.teleculinaria.pt/wp-content/uploads/2016/01/alheiras-no-forno-com-grelos-e-batatas-cozidas.jpg')
meald2 = Meal.create!(cook: userd2,
                      name: "Tamboril Rice",
                      description: "Tamboril is Portuguese for monkfish and while not as locally popular as the traditional cod, there is still an
                                    astounding variety of dishes served on the Portuguese coast that include it. It is often cooked in a laurel, garlic
                                    and tomato stew with rice, almost like a risotto, to become arroz de tamboril.",
                      grams_per_dose: 350,
                      ingredients: "Cilantro, onion,  cloves of garlic, cup parsley, pepper, tomato, paprika, green pepper, salt, pepper, extra virgin olive oil.",
                      price: 3.20,
                      address: userd2.address,
                      photo: 'https://cdn.teleculinaria.pt/wp-content/uploads/2016/01/alheiras-no-forno-com-grelos-e-batatas-cozidas.jpg')
meald3 = Meal.create!(cook: userd3,
                      name: "Eel Stews",
                      description: "Aveiro is famous for its eels which are most often eaten simply fried or in a soup.
                                    Fishermen at Murtosa and Torreira beaches, just outside Aveiro, make an eel stew seasoned with saffron and accompanied by bell
                                    peppers, combining beautifully with the crisp white wines of the Bairrada region, just south of Aveiro. The best place to try the
                                    caldeirada is Bastos, a restaurant on the Torreira Beach, just five miles from Aveiro.",
                      grams_per_dose: 200,
                      ingredients: "Eel, tomato, aromatic herb, garlic, onion, salt, pepper, extra virgin olive oil, polenta",
                      price: 6.20,
                      address: userd3.address,
                      photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Grilled_eel.jpg/1200px-Grilled_eel.jpg')


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


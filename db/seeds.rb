require 'faker'

Item.destroy_all
Order.destroy_all
Review.destroy_all
User.destroy_all
Account.destroy_all
Meal.destroy_all
WeekDay.destroy_all

puts("Creating Cooks...")
user1  = User.create!(first_name: "Maria",    last_name: "Fonseca",  address: "Rua da Moeda 6, Lisboa",               email: "maria@fesf.fr",     password: "123456", cook_status: 1)
user2  = User.create!(first_name: "Marta",    last_name: "Costa",    address: "Rua de São Marçal 170, Lisboa",        email: "marta@fesf.fr",     password: "123456", cook_status: 1)
user3  = User.create!(first_name: "Pedro",    last_name: "Oliveira", address: "Rua da Vitória 4, Lisboa",             email: "pedro@fesf.fr",     password: "123456", cook_status: 1)
user4  = User.create!(first_name: "Joana",    last_name: "Ramos",    address: "Avenida de Roma 39, Lisboa",           email: "joana@fesf.fr",     password: "123456", cook_status: 1)
user5  = User.create!(first_name: "Vasco",    last_name: "Castro",   address: "Avenida São João de Deus 35, Lisboa",  email: "vasco@fesf.fr",     password: "123456", cook_status: 1)

userc1 = User.create!(first_name: "Joaquim",  last_name: "Castilho", address: "Avenida 5 Outubro 2, Lisboa",          email: "joaquim@fesf.fr",   password: "123456", cook_status: 1, photo_fake: 'https://www.chefxchange.com/media/CACHE/images/image/chefs/3084/avatar_934891/bad3aef21bba6ebd359a340db9723814.jpg')
userc2 = User.create!(first_name: "Vanessa",  last_name: "Andrade",  address: "Rua Gomes Freire 203, Lisboa",         email: "vanessa@fesf.fr",   password: "123456", cook_status: 1, photo_fake: 'https://www.cheftime.com.br/fotos-moveis/mariana20buim20-imagem-avatar@2x.jpg')
userc3 = User.create!(first_name: "Carolina", last_name: "Mendes",   address: "Rua Abranches Ferrão 10, Lisboa",      email: "carolina@fesf.fr",  password: "123456", cook_status: 1, photo_fake: 'https://www.britmums.com/wp-content/uploads/2015/01/Deliciously-ella-about-me-350-square-300x300.jpg')


puts("Creating Users...")
user6  = User.create!(first_name: "Diogo",    last_name: "Rato",     address: "Avenida da Igreja 28, Lisboa",         email: "diogo@fesf.fr",     password: "123456", cook_status: 0, photo_fake: 'https://i.pinimg.com/736x/34/e5/21/34e5211511e66557dd7b40353185e946--mens-hairstyle-images-mens-undercut-hairstyle.jpg')
user7  = User.create!(first_name: "Ana",      last_name: "Silva",    address: "Rua Alexandre Herculano 2, Lisboa",    email: "ana@fesf.fr",       password: "123456", cook_status: 0, photo_fake: 'https://www.telegraph.co.uk/content/dam/beauty/2016/01/29/facelift-main_trans_NvBQzQNjv4BqqVzuuqpFlyLIwiB6NTmJwfSVWeZ_vEN7c6bHu2jJnT8.jpg?imwidth=450')
user8  = User.create!(first_name: "Catarina", last_name: "Toste",    address: "Avenida Elias Garcia 76, Lisboa",      email: "catarina@fesf.fr",  password: "123456", cook_status: 0, photo_fake: 'https://www.bolde.com/wp-content/uploads/2016/01/iStock_000083904633_Small-400x400.jpg')
user9  = User.create!(first_name: "Rute",     last_name: "Amaral",   address: "Rua da Penha de França 94, Lisboa",    email: "rute@fesf.fr",      password: "123456", cook_status: 0, photo_fake: 'http://boomerinas.com/wp-content/uploads/2013/11/how-to-wear-infinity-scarf-betty-barclay.jpg')
user10 = User.create!(first_name: "Manuel",   last_name: "Machado",  address: "Avenida da Liberdade 2, Lisboa",       email: "manuel@fesf.fr",    password: "123456", cook_status: 0, photo_fake: 'https://www.menshairstyletrends.com/wp-content/uploads/2014/10/Stephen-Rahman-Hughes-Round-Face-Men.jpg')
user11 = User.create!(first_name: "Sara",     last_name: "Guedes",   address: "Avenida do Brasil 30, Lisboa",         email: "sara@fesf.fr",      password: "123456", cook_status: 0, photo_fake: 'https://s3-eu-west-1.amazonaws.com/gtglive/public/image/nancy.jpg')


puts("Creating Meals...")

mealc1 = Meal.create!(cook: user2,
                      name: 'Red Bean, Carrot and Kale Stew',
                      description: 'This is a tasty bean stew, made ​​with only the essentials of any portuguese bean stew: Beans, Carrot and Cabbage, Kale in this case, but, like the Spiced Lima Bean Soup, is packed with nutrients and is a great way to enjoy the last bunches of Kale at the market while we dream with all the new vegetables and fruits that soon will fill the stalls!',
                      grams_per_dose: 300,
                      ingredients: 'Red Beans, Carrots, Kale, Tomatos and Onions.',
                      price: 7.5,
                      address: user2.address,
                      photo: 'https://minimalistbaker.com/wp-content/uploads/2016/02/1-POT-AMAZING-Lentil-and-Black-Bean-Chili-Smoky-hearty-PROTEIN-and-fiber-packed-vegan-glutenfree-lentils-chili-healthy-recipe-768x1152.jpg')
mealc2 = Meal.create!(cook: user4,
                      name: 'Caldo Verde',
                      description: 'The most traditional of Portuguese soups is as simple as it gets: onions, potatoes and kale, cooked with garlic and olive oil. Nothing says winter comfort food like a good serving of caldo verde in a traditional clay pot. This soup would normally be served with a slice of “linguiça” (typical smoked pork sausage) and cornbread. Dip it and enjoy!',
                      grams_per_dose: 200,
                      ingredients: 'Onions, Potatoes and Kale.',
                      price: 3.0,
                      address: user4.address,
                      photo: 'https://www.suwanneerose.com/wp-content/uploads/2016/02/caldoverde1.jpg')
mealc3 = Meal.create!(cook: userc1,
                      name: 'Bulhão Pato Clams',
                      description: 'More than a meal, clams Bulhão Pato style are a snack, best enjoyed with ice-cold beer. It’s very popular as appetizer as well, and a tasty way to get your juices flowing. Clams are cooked until tender in olive oil, garlic, salt, pepper and plenty of cilantro. Other similar clam dishes might feature this seafood cooked in white whine, butter and herbs, which is as good! Very important: you will need bread to dip into the sauces, as we can guarantee you wouldn’t want a drop to be left on the plate.',
                      grams_per_dose: 350,
                      ingredients: 'Clams, Lemon, White Wine, Coriander.',
                      price: 8.0,
                      address: userc1.address,
                      photo: 'https://www.iguaria.com/wp-content/uploads/2015/02/Ameijoas-Bulhao-Pato.jpg')
mealc4 = Meal.create!(cook: userc2,
                      name: 'Duck Rice',
                      description: 'Duck rice is cooked until the meat is ridiculously tender, simmered in red whine, and oven toasted along with the rice until the top is crispy. The rice absorbs the juices of the duck and is traditionally topped up with sliced smoked sausages. It’s a true feast of flavor.',
                      grams_per_dose: 400,
                      ingredients: 'Duck, Rice, Chorizo, Coriander.',
                      price: 6.5,
                      address: userc2.address,
                      photo: 'https://i.ytimg.com/vi/wsml2NqWxqI/maxresdefault.jpg')
mealc5 = Meal.create!(cook: userc3,
                      name: 'Bacalhau à Bras',
                      description: 'Out of the numerous ways to prepare salted cod fish in Portugal, “Bras style” is one of the most popular. The shredded cod is sauteed in a pan along with plenty of onions and straw fried potatoes. This dish is finished up with beaten eggs that cook as they join the pan, and topped with parsley and black olives. This is the essence of a country inside a plate!.',
                      grams_per_dose: 450,
                      ingredients: 'Codfish, Potatoes, Eggs, Olives, Parsley.',
                      price: 5.9,
                      address: userc3.address,
                      photo: 'http://portuguesediner.com/tiamaria/wp-content/uploads/2012/05/bacalhauabraz.jpg')

puts("Creating Orders...")
order1 = Order.create!(sku: 'a', user: user6,  status: 1, total_price: item1.item_price  + item2.item_price   + item3.item_price)
order2 = Order.create!(sku: 'b', user: user7,  status: 1, total_price: item4.item_price)
order3 = Order.create!(sku: 'c', user: user8,  status: 1, total_price: item5.item_price  + item6.item_price)
order4 = Order.create!(sku: 'd', user: user9,  status: 1, total_price: item7.item_price  + item8.item_price)

order5 = Order.create!(sku: 'd', user: user10, status: 0, total_price: item9.item_price)
order6 = Order.create!(sku: 'd', user: user11, status: 0, total_price: item10.item_price + item11.item_price)

puts("Creating Items...")
item1  = Item.create!(order: order1, meal: mealc1, doses: 2, item_price: mealc1.price * 2)
item2  = Item.create!(order: order1, meal: mealc2, doses: 1, item_price: mealc2.price * 1)
item3  = Item.create!(order: order1, meal: mealc3, doses: 3, item_price: mealc3.price * 3)

item4  = Item.create!(order: order2, meal: mealc2, doses: 4, item_price: mealc2.price * 4)

item5  = Item.create!(order: order3, meal: mealc3, doses: 1, item_price: mealc3.price * 1)
item6  = Item.create!(order: order3, meal: mealc5, doses: 2, item_price: mealc5.price * 2)

item7  = Item.create!(order: order4, meal: mealc1, doses: 2, item_price: mealc1.price * 2)
item8  = Item.create!(order: order4, meal: mealc4, doses: 2, item_price: mealc4.price * 2)

item9  = Item.create!(order: order5, meal: mealc5, doses: 3, item_price: mealc5.price * 3)

item10 = Item.create!(order: order6, meal: mealc1, doses: 1, item_price: mealc1.price * 1)
item10 = Item.create!(order: order6, meal: mealc2, doses: 3, item_price: mealc2.price * 3)

# sum = 0
# order1.items.each do |item|
#   sum += item.item_price
# end
# puts sum
# order1.total_price = sum
# puts order1.total_price

# #this is by far the most delicious lasagne i have had in my life! and i've had many! would highly recommend to all!

# puts("Creating Reviews...")
# Review.create!(user: User.find(6), meal: Meal.find(1), rating: 3, content: 'That was good enough')
# Review.create!(user: User.find(6), meal: Meal.find(2), rating: 1, content: "It's a trap! Don't order this meal!")
# Review.create!(user: User.find(7), meal: Meal.find(3), rating: 3, content: "Average meal..")
# Review.create!(user: User.find(7), meal: Meal.find(4), rating: 2, content: 'That was not good')
# Review.create!(user: User.find(8), meal: Meal.find(5), rating: 4, content: 'That was good')
# Review.create!(user: User.find(8), meal: Meal.find(6), rating: 5, content: 'That was really good')
# Review.create!(user: User.find(9), meal: Meal.find(7), rating: 5, content: 'That was really good')


# puts("Creating Weekdays...")
# (14..30).each do |day|
# WeekDay.create!(meal: Meal.find(1), pick_up_time_start: Time.zone.local(2018,06,day,21,00,00),
#                                     pick_up_time_end:   Time.zone.local(2018,06,day,22,30,00),
#                                     last_order_time:    Time.zone.local(2018,06,day,20,00,00),
#                                     doses: 5,
#                                     date: Date.new(2018,06,day))
# WeekDay.create!(meal: Meal.find(2), pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
#                                     pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
#                                     last_order_time:    Time.zone.local(2018,06,day,20,00,00),
#                                     doses: 8,
#                                     date: Date.new(2018,06,day))
# WeekDay.create!(meal: Meal.find(3), pick_up_time_start: Time.zone.local(2018,06,day,20,00,00),
#                                     pick_up_time_end:   Time.zone.local(2018,06,day,22,30,00),
#                                     last_order_time:    Time.zone.local(2018,06,day,19,30,00),
#                                     doses: 4,
#                                     date: Date.new(2018,06,day))
# WeekDay.create!(meal: Meal.find(4), pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
#                                     pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
#                                     last_order_time:    Time.zone.local(2018,06,day,20,00,00),
#                                     doses: 6,
#                                     date: Date.new(2018,06,day))
# WeekDay.create!(meal: Meal.find(5), pick_up_time_start: Time.zone.local(2018,06,day,22,00,00),
#                                     pick_up_time_end:   Time.zone.local(2018,06,day,23,00,00),
#                                     last_order_time:    Time.zone.local(2018,06,day,21,00,00),
#                                     doses: 7,
#                                     date: Date.new(2018,06,day))
# WeekDay.create!(meal: Meal.find(6), pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
#                                     pick_up_time_end:   Time.zone.local(2018,06,day,21,00,00),
#                                     last_order_time:    Time.zone.local(2018,06,day,19,00,00),
#                                     doses: 3,
#                                     date: Date.new(2018,06,day))
# puts day
# end
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


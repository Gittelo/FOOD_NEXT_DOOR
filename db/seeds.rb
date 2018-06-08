puts("Cleaning Database...")

Item.destroy_all
Order.destroy_all
Review.destroy_all
User.destroy_all
Account.destroy_all
Meal.destroy_all

puts("Creating users...")
user1 = User.create!(first_name: "Maria", last_name: "B",  address: "Lisbon",  email: "maria@fesf.fr",  password: "123456", cook_status: 0)
user2 = User.create!(first_name: "Marta", last_name: "C",  address: "Cascais", email: "marta@fesf.fr",  password: "123456", cook_status: 0)
user3 = User.create!(first_name: "Pedro", last_name: "F",  address: "Porto",   email: "pedro@fesf.fr",  password: "123456", cook_status: 0)
user4 = User.create!(first_name: "Joana", last_name: "R",  address: "Faro",    email: "joana@fesf.fr",  password: "123456", cook_status: 0)
user5 = User.create!(first_name: "Vasco", last_name: "C",  address: "Coimbra", email: "vasco@fesf.fr",  password: "123456", cook_status: 0)

puts("Creating meals...")

meal1 = Meal.create!(cook: user1,name: "Meat Balls of Love", description: "Have you had the pleasure of eating meatballs with your hands? If not, it’s time to cross that off your list with these kibbeh meatballs you can hand dip in a refreshing yogurt sauce. It’s finger food in top form, and the thanks goes to A Cedar Spoon.", grams_per_dose: 500, ingredients: "Maionese, tomato and cheese", price: 10, photo: 'https://s33.postimg.cc/gk6sxubpb/Balls_Pigale-12.jpg', address: '6 rua Moeda, Lisboa')
meal2 = Meal.create!(cook: user1,name: "Le Burger de Papa", description: "A juicy beef patty, an incredibly soft bun, crispy bacon, melted cheddar and homemade cocktail sauce... Your best friend after a tough day.", grams_per_dose: 400, ingredients: "Maionese", price: 10, photo: 'https://s33.postimg.cc/t1dgl2c0v/BIIIM_Kardashian.jpg', address: '26 Avenida Liberdade, Lisboa')
meal3 = Meal.create!(cook: user2,name: "Chicken Noodle Soup", description: "A slow-cooked and tasteful Chicken Noodle Soup perfect for any day of the week! You will be craving this often! Healthy, low calorie, filling with incredible flavours!", grams_per_dose: 300, ingredients: "tomato and cheese", price: 10, photo: 'https://images.unsplash.com/photo-1503764654157-72d979d9af2f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=71cdddf5cc615224cf2c26614d20154d&auto=format&fit=crop&w=2553&q=80', address: 'R. de São Marçal 170, Lisboa')
meal4 = Meal.create!(cook: user2,name: "Garden Fresh Salad", description: "I've had Chinese food in 45 states , Toronto and British Columbia  Hands down ... NO JOKE the best DIM SUM and fresh Chinese dishes ever that have crossed my taste buds !!", grams_per_dose: 100, ingredients: "carrot", price: 10, photo: 'https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f791b5847ff52ab502255c37c7e78498&auto=format&fit=crop&w=668&q=80', address: 'R. Academia das Ciências 19, Lisboa ')
meal5 = Meal.create!(cook: user2,name: "Pasta e polpette", description: "I've had Chinese food in 45 states , Toronto and British Columbia  Hands down ... NO JOKE the best DIM SUM and fresh Chinese dishes ever that have crossed my taste buds !!", grams_per_dose: 100, ingredients: "carrot", price: 10, photo: 'https://images.unsplash.com/photo-1513096010416-a2d75c794cf9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e966da6f823c4750779d8f8a10c6a205&auto=format&fit=crop&w=1302&q=80', address: '401, R. de Santa Catarina, 1200-012 Lisboa')
meal8 = Meal.create!(cook: user3,name: "Blueberry pancakes", description: "I've had Chinese food in 45 states , Toronto and British Columbia  Hands down ... NO JOKE the best DIM SUM and fresh Chinese dishes ever that have crossed my taste buds !!", grams_per_dose: 100, ingredients: "carrot", price: 10, photo: 'https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixlib=rb-0.3.5&s=0c64f21bce4b02fb267b1900ccc2b523&auto=format&fit=crop&w=938&q=80', address: '4 R. da Vitória, Lisboa')
meal6 = Meal.create!(cook: user3,name: "Summer Couscous", description: "I've had Chinese food in 45 states , Toronto and British Columbia  Hands down ... NO JOKE the best DIM SUM and fresh Chinese dishes ever that have crossed my taste buds !!", grams_per_dose: 100, ingredients: "carrot", price: 10, photo: 'https://images.unsplash.com/photo-1519996409144-56c88c9aa612?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3637911ee7fd91ef9087dae6efc0114f&auto=format&fit=crop&w=668&q=80', address: 'R. do Carmo 51-1, 1200-094, Lisboa')
meal7 = Meal.create!(cook: user3,name: "Red berries pancakes", description: "I've had Chinese food in 45 states , Toronto and British Columbia  Hands down ... NO JOKE the best DIM SUM and fresh Chinese dishes ever that have crossed my taste buds !!", grams_per_dose: 100, ingredients: "carrot", price: 10, photo: 'https://images.unsplash.com/photo-1502114586089-b9480c602e18?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2a76f872362e6c5ec393cedd3b098cc2&auto=format&fit=crop&w=668&q=80', address: 'R. Augusta 24, Lisboa')


puts("Creating Orders...")
order1 = Order.create!(sku: 'avocato', user: User.find(1), status: 0, total_price: Money.new(0))
# order3 = Order.create!(user: User.find(3), status: 0)
# order4 = Order.create!(user: User.find(4), status: 0)
# order5 = Order.create!(user: User.find(5), status: 0)

puts("Creating Item...")
item1 = Item.create!(order: Order.find(1), meal: Meal.find(1), doses: 2, item_price: Meal.find(1).price * 2)
item2 = Item.create!(order: Order.find(1), meal: Meal.find(2), doses: 4, item_price: Meal.find(2).price * 1)
item3 = Item.create!(order: Order.find(1), meal: Meal.find(3), doses: 1, item_price: Meal.find(1).price * 2)
item4 = Item.create!(order: Order.find(1), meal: Meal.find(4), doses: 4, item_price: Meal.find(3).price * 4)
item5 = Item.create!(order: Order.find(1), meal: Meal.find(3), doses: 3, item_price: Meal.find(1).price * 2)

sum = 0
order1.items.each do |item|
  sum += item.item_price
end
puts sum

order1.total_price = sum

puts order1.total_price

puts("Creating review...")
Review.create!(user: User.find(1), meal: Meal.find(1), rating: 3, content: 'That was good enough')
Review.create!(user: User.find(3), meal: Meal.find(1), rating: 1, content: "It's a trap! Don't order this meal!")
Review.create!(user: User.find(4), meal: Meal.find(1), rating: 3, content: "Average meal..")
Review.create!(user: User.find(2), meal: Meal.find(2), rating: 2, content: 'That was not good')
Review.create!(user: User.find(3), meal: Meal.find(3), rating: 3, content: 'That was good')
Review.create!(user: User.find(4), meal: Meal.find(4), rating: 4, content: 'That was really good')
Review.create!(user: User.find(5), meal: Meal.find(4), rating: 4, content: 'That was really good')



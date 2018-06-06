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

meal1 = Meal.create!(cook: user1,name: "Delicious Babon", description: "I didn't know Portugal shops closed early. The last two days, I got back post 9pm and there aren't many places open. Thankfully yelp came to the rescue with.", grams_per_dose: 500, ingredients: "Maionese, tomato and cheese", price: 10, address: '16 Villa Gaudelet, Paris')
meal2 = Meal.create!(cook: user2,name: "Delicious Lasanha", description: "This is one of the most random reviews ever, but this is the best Chinese food I've ever had. We've been here twice and both times Mr. Lu was here and in the kitchen.", grams_per_dose: 400, ingredients: "Maionese", price: 10, address: '22 rue Oberkampf, Paris')
meal3 = Meal.create!(cook: user2,name: "Delicious Pasta", description: "what a surprise! I had no high expectation thinking it might be just another so-so Chinese restaurant like others in lisbon. most people came  here for the buffet", grams_per_dose: 300, ingredients: "tomato and cheese", price: 10, address: '1 Rue du Liban, Paris')
meal4 = Meal.create!(cook: user3,name: "Great Sushi", description: "I've had Chinese food in 45 states , Toronto and British Columbia  Hands down ... NO JOKE the best DIM SUM and fresh Chinese dishes ever that have crossed my taste buds !!", grams_per_dose: 100, ingredients: "carrot", price: 10, address: '9 rue Le Regrattier, Paris')

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



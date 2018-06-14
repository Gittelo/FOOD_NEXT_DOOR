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
user2 = User.create!(first_name: "Marta",    last_name: "Carmo",      address: "Rua de São Marçal 170, Lisboa",        email: "marta@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTttXIwKVB1fejI-XxRuMxRDbtv7HBt67g4wMA1_MvUiyxhTz4Ag")
user3 = User.create!(first_name: "Pedro",    last_name: "Fargo",      address: "Rua da Vitória 4, Lisboa",             email: "pedro@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "https://s3.amazonaws.com/typekit-production-public-assets/designers/profile_images/000/000/391/original/400x400-ellmerstefan.jpg?1507307338")
user4 = User.create!(first_name: "Joana",    last_name: "Rosa",       address: "Avenida de Roma 39, Lisboa",           email: "joana@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "https://b3be987d4a14cedde80d-7c1ee3a3cf06785b3e2b618873b759ef.ssl.cf5.rackcdn.com/person_21674.png")
user5 = User.create!(first_name: "Vasco",    last_name: "Castro",     address: "Avenida São João de Deus 35, Lisboa",  email: "vasco@fesf.fr",     password: "123456", cook_status: 1, photo_fake: "https://avatars2.githubusercontent.com/u/398893?s=400&v=4")

userA1 = User.create!(first_name: "François", last_name: "Martin",       address: "1 Rua do Conde de Redondo, Lisboa",     email: "francois.martin@gmail.com",    password: "123456", cook_status: 1, photo_fake: 'https://menhairstylesworld.com/wp-content/uploads/2017/12/Business-Casual-Hairstyles-for-Men-with-Receding-Hairlines.jpg')
userA2 = User.create!(first_name: "Valentin", last_name: "Pons",         address: "18 Rua Silva Carvalho, Lisboa",         email: "valentin.pons@gmail.com",      password: "123456", cook_status: 1, photo_fake: 'https://images-na.ssl-images-amazon.com/images/I/61BSyQG1DGL.jpg')
userA3 = User.create!(first_name: "Henri",    last_name: "Quélin",       address: "24 Rua Seara Nova, Lisboa",             email: "henri.quelin@gmail.com",       password: "123456", cook_status: 1, photo_fake: 'https://www.menshairstylestoday.com/wp-content/uploads/2016/08/Fringe-Haircut-For-Men.jpg')
userA4 = User.create!(first_name: "Julia",    last_name: "Estagnasié",   address: "17 Rua Ferreira Lapa",                  email: "julia.estagnasie@gmail.com",   password: "123456", cook_status: 1, photo_fake: 'https://i.pinimg.com/originals/84/d2/0e/84d20eb6d69995bbbc178df518b1ea96.jpg')
userA5 = User.create!(first_name: "Ines",     last_name: "Zanoni",       address: "19 Rua Telhal, Lisboa",                 email: "ines.zanoni@gmail.com",        password: "123456", cook_status: 1, photo_fake: 'http://media.philly.com/images/RS_500x500_20180215_STAFFHEADSHOT_N_456751562.JPG')

userd1 = User.create!(first_name: "Mitch",   last_name: "Rodrigues",  address: "Avenida do Brasil 2, Lisboa",          email: "mitch@gmail.pt",    password: "123456", cook_status: 1, photo_fake: "https://res.cloudinary.com/www-virgin-com/w_400,c_scale,dpr_1.0,f_auto,fl_lossy,q_auto/virgin-com-prod/sites/virgin.com/files/kirk.jpeg")
userd2 = User.create!(first_name: "Emanuel", last_name: "Herculano",  address: "R. Vítor Cordon 2-20, Lisboa",         email: "emanuel@gmail.pt",  password: "123456", cook_status: 1, photo_fake: "https://1z1pdp2cr5ea30i3a81fh4af-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/Cast-J-Quinton-Johnson.jpg")
userd3 = User.create!(first_name: "Henrique",last_name: "Sousa",      address: "Rua da Penha de França 1, Lisboa",     email: "henrique@gmail.pt", password: "123456", cook_status: 1, photo_fake: "https://static1.squarespace.com/static/59e133d3f7e0ab03b64d8616/t/5a21cc69f9619a124de1cffb/1512165821929/Chris+Finlay")
userd4 = User.create!(first_name: "Julia",   last_name: "Martins",    address: "R. Ferragial 33-1, Lisboa",            email: "julia@gmail.pt",    password: "123456", cook_status: 1, photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG0zvS3WQ5srTvunf4bY5COPg9hkbAHKke3Ycsx7WSyp34U_Qo")
userd5 = User.create!(first_name: "Ricardo", last_name: "Lobo",       address: "R. Portas de Santo Antão 5, Lisboa",   email: "ricardo@gmail.pt",  password: "123456", cook_status: 1, photo_fake: "https://static.hltv.org/images/playerprofile/thumb/203/400.jpeg?v=5")

puts("Creating Users...")





puts("Creating Users...")
user6  = User.create!(first_name: "Diogo",    last_name: "Rato",      address: "Avenida da Igreja 28, Lisboa",         email: "diogo@fesf.fr",    password: "123456", cook_status: 0, photo_fake: "https://mbi.nus.edu.sg/wp-content/uploads/2017/03/portraits-shiva-jf-rupprecht-400w.jpg")
user7  = User.create!(first_name: "Ana",      last_name: "Mendonça",  address: "Rua Alexandre Herculano 2, Lisboa",    email: "ana@fesf.fr",      password: "123456", cook_status: 0, photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYMHC8GJ7Gm4Rn0hoqZoItF68fNWb-Mnzb5gKGx5bZJY2n_dUrVA")
user8  = User.create!(first_name: "Catarina", last_name: "Vidal",     address: "Avenida Elias Garcia 76, Lisboa",      email: "catarina@fesf.fr", password: "123456", cook_status: 0, photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlxb7ZeEPqLBVg_tOBv_DJCSEYbnGYMX6QipshLMQT0B4qRNMeOA")
user9  = User.create!(first_name: "Rute",     last_name: "Almada",    address: "Rua da Penha de França 94, Lisboa",    email: "rute@fesf.fr",     password: "123456", cook_status: 0, photo_fake: "https://cdn.shopify.com/s/files/1/2308/1525/files/5kDgVHUw_400x400_0f5f45d5-04b3-4d4e-b514-a4b73d797657_large.jpg?v=1504917606")
user10 = User.create!(first_name: "Manuel",   last_name: "Morato",    address: "Avenida da Liberdade 2, Lisboa",       email: "manuel@fesf.fr",   password: "123456", cook_status: 0, photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYJesooy7hw18Gt69HThUhnVopMPyLfYf1RnskfiHLl8nEOIrqRw")
user11 = User.create!(first_name: "Sara",     last_name: "Guerra",    address: "Avenida do Brasil 30, Lisboa",         email: "sara@fesf.fr",     password: "123456", cook_status: 0, photo_fake: "https://www.posttraumainstitute.com/blog/wp-content/uploads/2017/04/Marjorie-Person-1.jpg")

userA6 = User.create!(first_name: "Typhany",  last_name: "G",  address: "Avenida do Brasil 23, Lisboa",         email: "typhany@fesf.fr",  password: "123456", cook_status: 0)
userA7 = User.create!(first_name: "Elise",    last_name: "G",  address: "1 Rua Seara Nova, Lisboa",             email: "elise@fesf.fr",    password: "123456", cook_status: 0)
userA8 = User.create!(first_name: "Lea",      last_name: "G",  address: "Avenida de Roma 1, Lisboa",            email: "lea@fesf.fr",      password: "123456", cook_status: 0)
userA9 = User.create!(first_name: "Tim",      last_name: "G",  address: "1 Rua Telhal, Lisboa",                 email: "tim@fesf.fr",      password: "123456", cook_status: 0)



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


mealA1 = Meal.create!(cook: userA1,
                      name: "Protein Delight : Morning Omelette",
                      description: "“This is a great quick meal at any time of the day! This omelette is a fantastic source of protein, helping our muscles to grow and repair and helping us to feel fuller for longer. Served with wholemeal bread and a vegtables for a healthy, balanced meal. ”",
                      grams_per_dose: 450, ingredients: "Eggs, milk, butter, mushrooms, cheese, ham, spinach, tomatoes, salad, salt, pepper",
                      price: 4.5,
                      address: "userA1. address",
                      photo: 'https://4.bp.blogspot.com/-c7gRAH_aZlA/VBAC1IdQewI/AAAAAAAAC4s/ErZKSMyRFIU/s1600/IMG_9291.JPG')
mealA2 = Meal.create!(cook: userA2,
                      name: "Zucchini Gratin",
                      description: "This Easy Cheesy Zucchini Gratin has become a classic on Food Next Door! It’s cheesy and creamy, super easy to warm up, and the perfect low carb side dish for your keto diet! Can also be eaten cold.",
                      grams_per_dose: 400,
                      ingredients: "Zucchini, Butter, eggs, Parmigiano Regiano, mint, basil, sal, pepper, piment d'espelette, salt, pepper",
                      price: 6,
                      address: "userA2. address",
                      photo: 'http://cdn-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/gratin-de-courgettes-menthe-et-noisettes-2594127/42424635-1-fre-FR/Gratin-de-courgettes-menthe-et-noisettes.jpg')
mealA3 = Meal.create!(cook: userA3,
                      name: "Slow-cooked Salmon",
                      description: "Discover the magic of low ‘n slow tropical island salmon – once you try this one, you’ll probably never want to eat fish another way. For fish, low and slow creates the most dreamy, silky-smooth, melt in your mouth texture. And the surprise…the cooking is so gentle that the fully cooked salmon looks almost exactly like it did before cooking. Served with a fluffly potatoes purée. (At least two persons per portions).",
                      grams_per_dose: 700,
                      ingredients: "Salmon, Olive Oil, lemon, salt, pepper, potatoes, butter, milk",
                      price: 13,
                      address: "userA3. address",
                      photo: 'http://cdn3-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/toutes-vos-questions-cuisine/cuisson-saumon/51398714-2-fre-FR/Cuisson-saumon.jpg')
mealA4 = Meal.create!(cook: userA4,
                      name: "French South West Style Octopus Stew",
                      description: "This exotic revisited dish fits in perfectly with the French South West cuisine. This octopus stew takes plenty of time to prepare, since it requires long and slow simmering. The end result is a very tender octopus in a stew which will delight the most demanding taste buds. The chorizo and grass sublimate the fine and tasteful flesh of this mysterious animal. ",
                      grams_per_dose: 800,
                      ingredients: "Eggs, milk, butter, mushrooms, cheese, ham, spinach, tomatoes, salad, salt, pepper",
                      price: 4.5,
                      address: "userA4. address",
                      photo: 'https://4.bp.blogspot.com/-c7gRAH_aZlA/VBAC1IdQewI/AAAAAAAAC4s/ErZKSMyRFIU/s1600/IMG_9291.JPG')
mealA5 = Meal.create!(cook: userA5,
                      name: "Argentinian Whole Prime Rib Roast a la Parilla and Chimichurri",
                      description: "This is a classic of the Argentinian Cuisine. This high quality prime rib roast is whole grilled on the parilla. The meat comes directly from Argentinian producers and the chimichurri is, of course, homemade with only fresh ingredients.",
                      grams_per_dose: 1600,
                      ingredients: "Beef, various spicies, pepper, red wine vinegar, garlic cloves, shallot, fresh cilantro, fresh flat-leaf parsley, fresh oregano, extra-virgin olive oil",
                      price: 22,
                      address: "userA5. address",
                      photo: 'https://www.viandesuisse.ch/filemount/_processed_/csm_3676892_ac83a123f7.jpg')

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


puts("Creating Reviews...")
Review.create!(user: User.find(6), meal: Meal.find(1), rating: 3, content: 'That was good enough')
Review.create!(user: User.find(6), meal: Meal.find(2), rating: 1, content: "It's a trap! Don't order this meal!")
Review.create!(user: User.find(7), meal: Meal.find(3), rating: 3, content: "Average meal..")
Review.create!(user: User.find(7), meal: Meal.find(4), rating: 2, content: 'That was not good')
Review.create!(user: User.find(8), meal: Meal.find(5), rating: 4, content: 'That was good')
Review.create!(user: User.find(8), meal: Meal.find(6), rating: 5, content: 'That was really good')
Review.create!(user: User.find(9), meal: Meal.find(7), rating: 5, content: 'That was really good')
Review.create!(user: userA6, meal: mealA1, rating: 4, content: 'Nice and fluffly, this guy definitely knows how to cook eggs')
Review.create!(user: userA6, meal: mealA2, rating: 5, content: 'This wonderful gratin reminded of my childhood in countryside. The mint and basil make it modern and fresh. Excellent!')
Review.create!(user: userA7, meal: mealA2, rating: 4, content: 'A very creamy and generous gratin. Loved it!')
Review.create!(user: userA7, meal: mealA3, rating: 5, content: 'Very fine dish, the salmon is just perfectly cooked. It impressed all my friends coming for dinner. Will definitely order again.')
Review.create!(user: userA8, meal: mealA4, rating: 5, content: 'Octopus in another way, I was a bit skeptical at first but the chorizo brings this classic to a whole new level. Amazing!')
Review.create!(user: userA8, meal: mealA4, rating: 5, content: 'Just wow!')
Review.create!(user: userA9, meal: mealA4, rating: 4, content: 'I really loved it. Warning, it can be a bit spicy.')
Review.create!(user: userA9, meal: mealA2, rating: 5, content: '(Almost) better of the one of my grandmother.')
Review.create!(user: userA9, meal: mealA3, rating: 5, content: "Best Salmon I've ever eaten")

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


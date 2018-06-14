require 'faker'

Item.destroy_all
Order.destroy_all
Review.destroy_all
User.destroy_all
Account.destroy_all
Meal.destroy_all
WeekDay.destroy_all

puts("Creating Cooks...")


usercook  = User.create!(first_name: "Telo",     last_name: "Castro",    address: "Rua da Moeda 6, Lisboa",                 email: "telo@gmail.com",      password: "123456", cook_status: 1, photo_fake: 'https://s3.amazonaws.com/typekit-production-public-assets/designers/profile_images/000/000/391/original/400x400-ellmerstefan.jpg?1507307338')

user1  = User.create!(first_name: "Maria",     last_name: "Fonseca",    address: "Rua da Moeda 6, Lisboa",                 email: "maria@fesf.fr",      password: "123456", cook_status: 1, photo_fake: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSARxPiIB8cCL-xCX9CW9lyOq75poVh842vdlsYfAJEMPj5J4uLyA')
user2  = User.create!(first_name: "Marta",     last_name: "Costa",      address: "Rua de São Marçal 170, Lisboa",          email: "marta@fesf.fr",      password: "123456", cook_status: 1, photo_fake: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTttXIwKVB1fejI-XxRuMxRDbtv7HBt67g4wMA1_MvUiyxhTz4Ag')
user3  = User.create!(first_name: "Pedro",     last_name: "Oliveira",   address: "Rua da Vitória 4, Lisboa",               email: "pedro@fesf.fr",      password: "123456", cook_status: 1, photo_fake: 'https://s3.amazonaws.com/typekit-production-public-assets/designers/profile_images/000/000/391/original/400x400-ellmerstefan.jpg?1507307338')
user4  = User.create!(first_name: "Joana",     last_name: "Ramos",      address: "Avenida de Roma 39, Lisboa",             email: "joana@fesf.fr",      password: "123456", cook_status: 1, photo_fake: 'https://b3be987d4a14cedde80d-7c1ee3a3cf06785b3e2b618873b759ef.ssl.cf5.rackcdn.com/person_21674.png')
user5  = User.create!(first_name: "Vasco",     last_name: "Castro",     address: "Avenida São João de Deus 35, Lisboa",    email: "vasco@fesf.fr",      password: "123456", cook_status: 1, photo_fake: 'https://avatars2.githubusercontent.com/u/398893?s=400&v=4')

userC1 = User.create!(first_name: "Joaquim",   last_name: "Castilho",   address: "Avenida 5 Outubro 2, Lisboa",            email: "joaquim@fesf.fr",    password: "123456", cook_status: 1, photo_fake: 'https://www.chefxchange.com/media/CACHE/images/image/chefs/3084/avatar_934891/bad3aef21bba6ebd359a340db9723814.jpg')
userC2 = User.create!(first_name: "Vanessa",   last_name: "Andrade",    address: "Rua Gomes Freire 203, Lisboa",           email: "vanessa@fesf.fr",    password: "123456", cook_status: 1, photo_fake: 'https://www.cheftime.com.br/fotos-moveis/mariana20buim20-imagem-avatar@2x.jpg')
userC3 = User.create!(first_name: "Carolina",  last_name: "Mendes",     address: "Rua Abranches Ferrão 10, Lisboa",        email: "carolina@fesf.fr",   password: "123456", cook_status: 1, photo_fake: 'https://www.britmums.com/wp-content/uploads/2015/01/Deliciously-ella-about-me-350-square-300x300.jpg')

userJ1 = User.create!(first_name: "Miguel",    last_name: "Almeida",    address: "Avenida da República, 20, Lisboa",       email: "miguel@fesf.fr",     password: "123456", cook_status: 1, photo_fake: 'https://pbs.twimg.com/profile_images/832013772780924928/LZD5m9lF_400x400.jpg')
userJ2 = User.create!(first_name: "Isabel",    last_name: "Silva",      address: "Avenida de Berna, 10, Lisboa",           email: "isabel@fesf.fr",     password: "123456", cook_status: 1, photo_fake: 'http://www.2tg.co.uk/wp-content/uploads/2017/06/isabel-barter_Web-400x400.jpg')
userJ3 = User.create!(first_name: "Margarida", last_name: "Prates",     address: "Rua António Augusto Aguiar, 37, Lisboa", email: "margarida@fesf.fr",  password: "123456", cook_status: 1, photo_fake: 'https://www.cabri-sbo.org/uploads/files/_400x400_crop_top-center/Joana-2.jpg')
userJ4 = User.create!(first_name: "Pedro",     last_name: "Carneiro",   address: "Avenida da Igreja, 40, Lisboa",          email: "pedro.c@fesf.fr",    password: "123456", cook_status: 1, photo_fake: 'https://pbs.twimg.com/profile_images/988539643783151616/aczdT5i0_400x400.jpg')
userJ5 = User.create!(first_name: "Mariana",   last_name: "Pires",      address: "Rua Bernardim Ribeiro, 55, Lisboa",      email: "mariana@fesf.fr",    password: "123456", cook_status: 1, photo_fake: 'https://pbs.twimg.com/profile_images/834967283751583744/WDcI47m-_400x400.jpg')

userA1 = User.create!(first_name: "François",  last_name: "Martin",     address: "Rua do Conde de Redondo 1, Lisboa",      email: "francois@gmail.com", password: "123456", cook_status: 1, photo_fake: 'https://menhairstylesworld.com/wp-content/uploads/2017/12/Business-Casual-Hairstyles-for-Men-with-Receding-Hairlines.jpg')
userA2 = User.create!(first_name: "Henri",     last_name: "Quélin",     address: "Rua do Conde de Redondo 105, Lisboa",    email: "henri@gmail.com",    password: "123456", cook_status: 1, photo_fake: 'https://images-na.ssl-images-amazon.com/images/I/61BSyQG1DGL.jpg')
# Cook choosen
userA3 = User.create!(first_name: "Antoine",   last_name: "Quellier",   address: "Rua do Conde de Redondo 79, Lisboa",     email: "antoine@gmail.com",  password: "123456", cook_status: 1, photo_fake: 'https://www.menshairstylestoday.com/wp-content/uploads/2016/08/Fringe-Haircut-For-Men.jpg')
userA4 = User.create!(first_name: "Julia",     last_name: "Estagnasié", address: "Rua Ferreira Lapa 17, Lisboa",           email: "julia@gmail.com",    password: "123456", cook_status: 1, photo_fake: 'https://i.pinimg.com/originals/84/d2/0e/84d20eb6d69995bbbc178df518b1ea96.jpg')
userA5 = User.create!(first_name: "Ines",      last_name: "Zanoni",     address: "Rua Telhal 19, Lisboa",                  email: "ines@gmail.com",     password: "123456", cook_status: 1, photo_fake: 'http://media.philly.com/images/RS_500x500_20180215_STAFFHEADSHOT_N_456751562.JPG')

userD1 = User.create!(first_name: "Mitch",     last_name: "Rodrigues",  address: "Avenida do Brasil 2, Lisboa",            email: "mitch@gmail.pt",     password: "123456", cook_status: 1, photo_fake: "https://res.cloudinary.com/www-virgin-com/w_400,c_scale,dpr_1.0,f_auto,fl_lossy,q_auto/virgin-com-prod/sites/virgin.com/files/kirk.jpeg")
userD2 = User.create!(first_name: "Emanuel",   last_name: "Herculano",  address: "Rua Vítor Cordon 20, Lisboa",            email: "emanuel@gmail.pt",   password: "123456", cook_status: 1, photo_fake: "https://1z1pdp2cr5ea30i3a81fh4af-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/Cast-J-Quinton-Johnson.jpg")
userD3 = User.create!(first_name: "Henrique",  last_name: "Sousa",      address: "Rua da Penha de França 1, Lisboa",       email: "henrique@gmail.pt",  password: "123456", cook_status: 1, photo_fake: "https://static1.squarespace.com/static/59e133d3f7e0ab03b64d8616/t/5a21cc69f9619a124de1cffb/1512165821929/Chris+Finlay")
userD4 = User.create!(first_name: "Julia",     last_name: "Martins",    address: "Rua Ferragial 33, Lisboa",               email: "julia@gmail.pt",     password: "123456", cook_status: 1, photo_fake: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG0zvS3WQ5srTvunf4bY5COPg9hkbAHKke3Ycsx7WSyp34U_Qo")
userD5 = User.create!(first_name: "Ricardo",   last_name: "Lobo",       address: "Rua Portas de Santo Antão 5, Lisboa",    email: "ricardo@gmail.pt",   password: "123456", cook_status: 1, photo_fake: "https://static.hltv.org/images/playerprofile/thumb/203/400.jpeg?v=5")


puts("Creating Users...")
user6  = User.create!(first_name: "Diogo",     last_name: "Telo",       address: "Avenida da Igreja 28, Lisboa",           email: "diogo@fesf.fr",      password: "123456", cook_status: 0, photo_fake: 'https://i.pinimg.com/736x/34/e5/21/34e5211511e66557dd7b40353185e946--mens-hairstyle-images-mens-undercut-hairstyle.jpg')
user7  = User.create!(first_name: "Ana",       last_name: "Silva",      address: "Rua Alexandre Herculano 2, Lisboa",      email: "ana@fesf.fr",        password: "123456", cook_status: 0, photo_fake: 'https://www.telegraph.co.uk/content/dam/beauty/2016/01/29/facelift-main_trans_NvBQzQNjv4BqqVzuuqpFlyLIwiB6NTmJwfSVWeZ_vEN7c6bHu2jJnT8.jpg?imwidth=450')
user8  = User.create!(first_name: "Catarina",  last_name: "Toste",      address: "Avenida Elias Garcia 76, Lisboa",        email: "catarina@fesf.fr",   password: "123456", cook_status: 0, photo_fake: 'https://www.bolde.com/wp-content/uploads/2016/01/iStock_000083904633_Small-400x400.jpg')
user9  = User.create!(first_name: "Rute",      last_name: "Amaral",     address: "Rua da Penha de França 94, Lisboa",      email: "rute@fesf.fr",       password: "123456", cook_status: 0, photo_fake: 'http://boomerinas.com/wp-content/uploads/2013/11/how-to-wear-infinity-scarf-betty-barclay.jpg')
user10 = User.create!(first_name: "Manuel",    last_name: "Machado",    address: "Avenida da Liberdade 2, Lisboa",         email: "manuel@fesf.fr",     password: "123456", cook_status: 0, photo_fake: 'https://www.menshairstyletrends.com/wp-content/uploads/2014/10/Stephen-Rahman-Hughes-Round-Face-Men.jpg')
user11 = User.create!(first_name: "Sara",      last_name: "Guedes",     address: "Avenida do Brasil 30, Lisboa",           email: "sara@fesf.fr",       password: "123456", cook_status: 0, photo_fake: 'https://s3-eu-west-1.amazonaws.com/gtglive/public/image/nancy.jpg')

userJ6 = User.create!(first_name: "Ana",       last_name: "G",          address: "Estrada de Benfica, 277, Lisboa",        email: "ana.g@fesf.fr",      password: "123456", cook_status: 0, photo_fake: 'https://pbs.twimg.com/profile_images/894021283582750720/HoGy2kAV_400x400.jpg')
userJ7 = User.create!(first_name: "Francisco", last_name: "G",          address: "Rua 4 de Infantaria, 20, Lisboa",        email: "franscisco@fesf.fr", password: "123456", cook_status: 0, photo_fake: 'http://ecfr.eu/page/-/Borjas_profile_picture_II.jpg?v=1463746828')
userJ8 = User.create!(first_name: "Sofia",     last_name: "G",          address: "Travessa de Santa Quitéria, 25, Lisboa", email: "sofia@fesf.fr",      password: "123456", cook_status: 0, photo_fake: "http://r.fod4.com/c=sq/s=w250,pd2/o=80/http://p.fod4.com/p/channels/kqswu/profile/duSTMEv6TRycZmqilwGk_Sofia%20Black%20D'elia.jpg")
userJ9 = User.create!(first_name: "João",      last_name: "G",          address: "Rua Luciano Cordeiro, 14, Lisboa",       email: "joao@fesf.fr",       password: "123456", cook_status: 0, photo_fake: "http://www.guengl.eu/images/made/uploads/mep-pictures/FERREIRA_JOAO_PT_400_500_70_c1_c_t.JPG")
userJ10 = User.create!(first_name: "Manuel",    last_name: "G",          address: "Rua Tomás Ribero 15, Lisboa",            email: "manuel.g@fesf.fr",   password: "123456", cook_status: 0, photo_fake: 'https://wit.edu/sites/default/files/delgado-manuel.jpg')

userA6 = User.create!(first_name: "Typhany",   last_name: "G",          address: "Avenida do Brasil 23, Lisboa",           email: "typhany@fesf.fr",    password: "123456", cook_status: 0, photo_fake: 'https://i.pinimg.com/originals/2f/9d/4f/2f9d4f05948c5fe1c2aa06aebb69088c.jpg')
userA7 = User.create!(first_name: "Elise",     last_name: "G",          address: "Rua Seara Nova 1, Lisboa",               email: "elise@fesf.fr",      password: "123456", cook_status: 0, photo_fake: 'http://www.lovely-hairstyles.com/wp-content/uploads/2016/11/Hair-Style-for-Black-Women.jpg')
userA8 = User.create!(first_name: "Lea",       last_name: "G",          address: "Avenida de Roma 1, Lisboa",              email: "lea@fesf.fr",        password: "123456", cook_status: 0, photo_fake: 'https://www.womeninbiznetwork.com/wp-content/uploads/2017/02/2-500x500.png')
userA9 = User.create!(first_name: "Tim",       last_name: "G",          address: "Rua Telhal 1, Lisboa",                   email: "tim@fesf.fr",        password: "123456", cook_status: 0, photo_fake: 'https://wit.edu/sites/default/files/delgado-manuel.jpg')


puts("Creating Meals...")

mealD3 = Meal.create!(cook: userA5,
                      name: "Eel Stews",
                      description: "Aveiro is famous for its eels which are most often eaten simply fried or in a soup.
                                    Fishermen at Murtosa and Torreira beaches, just outside Aveiro, make an eel stew seasoned with saffron and accompanied by bell
                                    peppers, combining beautifully with the crisp white wines of the Bairrada region, just south of Aveiro. The best place to try the
                                    caldeirada is Bastos, a restaurant on the Torreira Beach, just five miles from Aveiro.",
                      grams_per_dose: 200,
                      ingredients: "Eel, tomato, aromatic herb, garlic, onion, salt, pepper, extra virgin olive oil, polenta",
                      price: 6.20,
                      address: usercook.address,
                      photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Grilled_eel.jpg/1200px-Grilled_eel.jpg')
mealC1 = Meal.create!(cook: userJ5,
                      name: 'Red Bean, Carrot and Kale Stew',
                      description: 'This is a tasty bean stew, made ​​with only the essentials of any portuguese bean stew: Beans, Carrot and Cabbage, Kale in this case, but, like the Spiced Lima Bean Soup, is packed with nutrients and is a great way to enjoy the last bunches of Kale at the market while we dream with all the new vegetables and fruits that soon will fill the stalls!',
                      grams_per_dose: 300,
                      ingredients: 'Red Beans, Carrots, Kale, Tomatos and Onions.',
                      price: 7.5,
                      address: userJ5.address,
                      photo: 'https://minimalistbaker.com/wp-content/uploads/2016/02/1-POT-AMAZING-Lentil-and-Black-Bean-Chili-Smoky-hearty-PROTEIN-and-fiber-packed-vegan-glutenfree-lentils-chili-healthy-recipe-768x1152.jpg')


mealC1 = Meal.create!(cook: user2,
                      name: 'Red Bean, Carrot and Kale Stew',
                      description: 'This is a tasty bean stew, made ​​with only the essentials of any portuguese bean stew: Beans, Carrot and Cabbage, Kale in this case, but, like the Spiced Lima Bean Soup, is packed with nutrients and is a great way to enjoy the last bunches of Kale at the market while we dream with all the new vegetables and fruits that soon will fill the stalls!',
                      grams_per_dose: 300,
                      ingredients: 'Red Beans, Carrots, Kale, Tomatos and Onions.',
                      price: 7.5,
                      address: user2.address,
                      photo: 'https://minimalistbaker.com/wp-content/uploads/2016/02/1-POT-AMAZING-Lentil-and-Black-Bean-Chili-Smoky-hearty-PROTEIN-and-fiber-packed-vegan-glutenfree-lentils-chili-healthy-recipe-768x1152.jpg')

mealC2 = Meal.create!(cook: user4,
                      name: 'Caldo Verde',
                      description: 'The most traditional of Portuguese soups is as simple as it gets: onions, potatoes and kale, cooked with garlic and olive oil. Nothing says winter comfort food like a good serving of caldo verde in a traditional clay pot. This soup would normally be served with a slice of “linguiça” (typical smoked pork sausage) and cornbread. Dip it and enjoy!',
                      grams_per_dose: 200,
                      ingredients: 'Onions, Potatoes and Kale.',
                      price: 3.0,
                      address: user4.address,
                      photo: 'https://www.suwanneerose.com/wp-content/uploads/2016/02/caldoverde1.jpg')

mealC3 = Meal.create!(cook: userC1,
                      name: 'Bulhão Pato Clams',
                      description: 'More than a meal, clams Bulhão Pato style are a snack, best enjoyed with ice-cold beer. It’s very popular as appetizer as well, and a tasty way to get your juices flowing. Clams are cooked until tender in olive oil, garlic, salt, pepper and plenty of cilantro. Other similar clam dishes might feature this seafood cooked in white whine, butter and herbs, which is as good! Very important: you will need bread to dip into the sauces, as we can guarantee you wouldn’t want a drop to be left on the plate.',
                      grams_per_dose: 350,
                      ingredients: 'Clams, Lemon, White Wine, Coriander.',
                      price: 8.0,
                      address: userC1.address,
                      photo: 'https://www.iguaria.com/wp-content/uploads/2015/02/Ameijoas-Bulhao-Pato.jpg')
mealC4 = Meal.create!(cook: userC2,
                      name: 'Duck Rice',
                      description: 'Duck rice is cooked until the meat is ridiculously tender, simmered in red whine, and oven toasted along with the rice until the top is crispy. The rice absorbs the juices of the duck and is traditionally topped up with sliced smoked sausages. It’s a true feast of flavor.',
                      grams_per_dose: 400,
                      ingredients: 'Duck, Rice, Chorizo, Coriander.',
                      price: 6.5,
                      address: userC2.address,
                      photo: 'https://i.ytimg.com/vi/wsml2NqWxqI/maxresdefault.jpg')
mealC5 = Meal.create!(cook: userC3,
                      name: 'Bacalhau à Bras',
                      description: 'Out of the numerous ways to prepare salted cod fish in Portugal, “Bras style” is one of the most popular. The shredded cod is sauteed in a pan along with plenty of onions and straw fried potatoes. This dish is finished up with beaten eggs that cook as they join the pan, and topped with parsley and black olives. This is the essence of a country inside a plate!.',
                      grams_per_dose: 450,
                      ingredients: 'Codfish, Potatoes, Eggs, Olives, Parsley.',
                      price: 5.9,
                      address: userC3.address,
                      photo: 'http://portuguesediner.com/tiamaria/wp-content/uploads/2012/05/bacalhauabraz.jpg')

mealJ1 = Meal.create!(cook: userJ1,
                      name: 'Quiche Lorraine',
                      description: 'The most traditional French Pie, has a savory custard and is usually flavored with bacon and Swiss or Gruyere cheese.
                                    Our version of Quiche Lorraine is just that: made with a creamy, cheesy, savory center and baked on a flaky, warm crust for a brunch recipe that’s filling',
                      grams_per_dose: 300,
                      ingredients: 'Bacon, gruyère, eggs, pastry, olive oil, eggs, milk, cream',
                      price: 4.5,
                      address: userJ1.address,
                      photo: 'https://img.taste.com.au/yzM49jFu/taste/2017/02/classic-quiche-lorraine-121391-2.jpg')
mealJ2 = Meal.create!(cook: userJ2,
                      name: 'Brazilian Picanha',
                      description: 'Picanha (pronounced pee-Con-ya) has become one of the most popular dishes at Brazilian BBQ restaurants, called Churrascarias.
                                    What is a picanha? It is a triangular cut from the top of the, that’s right, rump region of the cow, and just like our rumps, it has a beautiful layer of fat.  It is not a muscle that moves much during the animal’s life, and so, remains tender.',
                      grams_per_dose: 650,
                      ingredients: 'Picanha, garlic, rice, polenta, corn, lettuce, tomato, salt and pepper.',
                      price: 9,
                      address: userJ2.address,
                      photo: 'http://www.pamonhasdocezar.com.br/uploads/3226d0672c5162538c1ec3898c63bb44.jpg')
mealJ3 = Meal.create!(cook: userJ3,
                      name: 'Polvo à Lagareiro',
                      description: 'Polvo à lagareiro is a quintessentially Portuguese seafood dish featuring a boiled and baked octopus with smashed potatoes in a herbed garlic oil.
                                    The dish is a common meal on many tables throughout the country, though many claim the dish hails from the Beiras, a strip of land between the South of the Douro River and the North of the Tagus River.',
                      grams_per_dose: 700,
                      ingredients: 'Octupus, potatoes, onions, coriander, garlic, olive oil, bay leaves, salt and pepper.',
                      price: 8.5,
                      address: userJ3.address,
                      photo: 'https://labohemie.pt/wp-content/uploads/2017/12/Fama-dAlfama-polvo-%C3%A0-lagareiro.jpg')
mealJ4 = Meal.create!(cook: userJ4,
                      name: 'Açorda de Marisco',
                      description: 'Açorda is a typical simple Portuguese meal, which is made from a handful of basic ingredients: eggs, bread, olive oil, garlic, cilantro, water, and salt.
                                    It’s the iconic soup of the Alentejo region of Portugal, which sweeps across from Spain to the Atlantic, right through the center of the country.
                                    Like so much cozinha pobre (rural fare), açorda is the very notion of frugality itself. Soup really doesn’t come much easier than this!',
                      grams_per_dose: 500,
                      ingredients: 'Clams, cockle, shrimp, bread, garlic, olive oil, coriander, eggs, salt, pepper and chilli.',
                      price: 4.5,
                      address: userJ4.address,
                      photo: 'http://2.bp.blogspot.com/-pgxx565h1kM/Tig7-m3-ynI/AAAAAAAABME/RpHuaPQjfdA/s640/DSC02387.JPG')
mealJ5 = Meal.create!(cook: userA4,
                      name: 'Bitoque',
                      description: 'Bitoque is a traditional Portuguese dish, which consists of a lean fried or grilled steak or pork, that is usually accompanied by fries, rice, various salads and topped with an egg.
                                    This recipe has its origin in Beira’s, Portugal. Bitoque is one of the most common lunch options for many Portuguese people and can be found on menus of many traditional restaurants across the country.',
                      grams_per_dose: 800,
                      ingredients: 'Beef, rice, egg, potatoes, butter, garlic, onion, olive oil, salt and pepper and vegetable oil.',
                      price: 6,
                      address: userJ5.address,
                      photo: 'https://media.timeout.com/images/103701660/image.jpg')

mealA1 = Meal.create!(cook: userA1,
                      name: "Ham & Cheese Omelette",
                      description: "This is a great quick meal at any time of the day! This omelette is a fantastic source of protein, helping our muscles to grow and repair and helping us to feel fuller for longer. Served with wholemeal bread and a vegtables for a healthy, balanced meal.",
                      grams_per_dose: 450, ingredients: "Eggs, milk, butter, mushrooms, cheese, ham, spinach, tomatoes, salad, salt, pepper",
                      price: 4.5,
                      address: userA1. address,
                      photo: 'https://4.bp.blogspot.com/-c7gRAH_aZlA/VBAC1IdQewI/AAAAAAAAC4s/ErZKSMyRFIU/s1600/IMG_9291.JPG')
mealA2 = Meal.create!(cook: userA1,
                      name: "Zucchini Gratin",
                      description: "This Easy Cheesy Zucchini Gratin has become a classic on Food Next Door! It’s cheesy and creamy, super easy to warm up, and the perfect low carb side dish for your keto diet! I discovered this one in a recipes book written by the French Chef Hélène Darroz, definitely a reference in her genre. This dish can also be eaten cold.",
                      grams_per_dose: 400,
                      ingredients: "Zucchini, Butter, eggs, Parmigiano Regiano, mint, basil, sal, pepper, piment d'espelette, salt, pepper",
                      price: 6,
                      address: userA1. address,
                      photo: 'http://cdn-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/gratin-de-courgettes-menthe-et-noisettes-2594127/42424635-1-fre-FR/Gratin-de-courgettes-menthe-et-noisettes.jpg')
mealA3 = Meal.create!(cook: userA3,
                      name: "Slow-cooked Salmon",
                      description: "Discover the magic of low ‘n slow tropical island salmon – once you try this one, you’ll probably never want to eat fish another way. For fish, low and slow creates the most dreamy, silky-smooth, melt in your mouth texture. And the surprise…the cooking is so gentle that the fully cooked salmon looks almost exactly like it did before cooking. Served with a fluffly potatoes purée. (At least two persons per portions).",
                      grams_per_dose: 700,
                      ingredients: "Salmon, Olive Oil, lemon, salt, pepper, potatoes, butter, milk",
                      price: 13,
                      address: userA3. address,
                      photo: 'http://cdn3-elle.ladmedia.fr/var/plain_site/storage/images/elle-a-table/toutes-vos-questions-cuisine/cuisson-saumon/51398714-2-fre-FR/Cuisson-saumon.jpg')
mealA4 = Meal.create!(cook: userA2,
                      name: "Octopus Chorizo Stew",
                      description: "This exotic revisited dish fits in perfectly with the French South West cuisine. This octopus stew takes plenty of time to prepare, since it requires long and slow simmering. The end result is a very tender octopus in a stew which will delight the most demanding taste buds. The chorizo and grass sublimate the fine and tasteful flesh of this mysterious animal. ",
                      grams_per_dose: 800,
                      ingredients: "Eggs, milk, butter, mushrooms, cheese, ham, spinach, tomatoes, salad, salt, pepper",
                      price: 12.5,
                      address: userA2. address,
                      photo: 'https://i.pinimg.com/originals/87/d1/57/87d157cdeb19dbdf7b6136bd9fa99273.jpg')
mealA5 = Meal.create!(cook: userA3,
                      name: "Argentinian Whole Prime Rib Roast a la Parilla",
                      description: "This is a classic of the Argentinian Cuisine. This high quality prime rib roast is whole grilled on the parilla. The meat comes directly from Argentinian producers and the chimichurri is, of course, homemade with only fresh ingredients.",
                      grams_per_dose: 1600,
                      ingredients: "Beef, various spicies, pepper, red wine vinegar, garlic cloves, shallot, fresh cilantro, fresh flat-leaf parsley, fresh oregano, extra-virgin olive oil",
                      price: 14,
                      address: userA5. address,
                      photo: 'https://www.viandesuisse.ch/filemount/_processed_/csm_3676892_ac83a123f7.jpg')

mealD1 = Meal.create!(cook: userD1,
                      name: "Mirandela's Alheira",
                      description: "The alheira, a type of fowl sausage, is one of the cheapest and most common Portuguese dishes with a fascinating history. When the Jewish population was expelled from Portugal in 1498, many hid in the mountainous region of Trás-os-Montes in the northeast
                                    of Portugal, practising their religion in secret while pretending they had converted to Catholicism. One way to do this was to ostensibly make, display and eat sausages so that everyone would think they were no longer keeping kosher. Nowadays, the dish is available in any corner eatery.",
                      grams_per_dose: 300,
                      ingredients: "Beef, poultry, bread, lard, garlic, paprika,salt, pepper, extra virgin olive oil.",
                      price: 5.5,
                      address: userD1.address,
                      photo: 'https://cdn.teleculinaria.pt/wp-content/uploads/2016/01/alheiras-no-forno-com-grelos-e-batatas-cozidas.jpg')
mealD2 = Meal.create!(cook: userD2,
                      name: "Tamboril Rice",
                      description: "Tamboril is Portuguese for monkfish and while not as locally popular as the traditional cod, there is still an
                                    astounding variety of dishes served on the Portuguese coast that include it. It is often cooked in a laurel, garlic
                                    and tomato stew with rice, almost like a risotto, to become arroz de tamboril.",
                      grams_per_dose: 350,
                      ingredients: "Cilantro, onion,  cloves of garlic, cup parsley, pepper, tomato, paprika, green pepper, salt, pepper, extra virgin olive oil.",
                      price: 6.20,
                      address: userD2.address,
                      photo: 'https://fotos.web.sapo.io/i/o1b06043a/18261602_AjELi.jpeg')


# puts("Creating Orders...")
# order1 = Order.create!(sku: 'a', user: user6,  status: 1, total_price: )
# order2 = Order.create!(sku: 'b', user: user7,  status: 1, total_price: )
# order3 = Order.create!(sku: 'c', user: user8,  status: 1, total_price: )
# order4 = Order.create!(sku: 'd', user: user9,  status: 1, total_price: )


# puts("Creating Items...")
# item1  = Item.create!(order: order1, meal: mealC1, doses: 2, item_price: mealC1.price * 2)
# item2  = Item.create!(order: order1, meal: mealC2, doses: 1, item_price: mealC2.price * 1)
# item3  = Item.create!(order: order1, meal: mealC3, doses: 3, item_price: mealC3.price * 3)

# item4  = Item.create!(order: order2, meal: mealC2, doses: 4, item_price: mealC2.price * 4)

# item5  = Item.create!(order: order3, meal: mealC3, doses: 1, item_price: mealC3.price * 1)
# item6  = Item.create!(order: order3, meal: mealC5, doses: 2, item_price: mealC5.price * 2)

# item7  = Item.create!(order: order4, meal: mealC1, doses: 2, item_price: mealC1.price * 2)
# item8  = Item.create!(order: order4, meal: mealC4, doses: 2, item_price: mealC4.price * 2)


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


puts("Creating Reviews...")

Review.create!(user: userJ1, meal: mealJ1, rating: 5, content: 'This was amazing!')
Review.create!(user: userJ2, meal: mealJ2, rating: 2, content: 'I was expecting better..')
Review.create!(user: userJ3, meal: mealJ3, rating: 3, content: 'I did not love it.')
Review.create!(user: userJ4, meal: mealJ4, rating: 4, content: 'Very very good!')
Review.create!(user: userJ5, meal: mealJ5, rating: 5, content: "Couldn't recommend this more")

Review.create!(user: userA5, meal: mealA1, rating: 4, content: 'Nice and fluffly, this guy definitely knows how to cook eggs')
Review.create!(user: userA5, meal: mealA2, rating: 5, content: 'This wonderful gratin reminded of my childhood in countryside. The mint and basil make it modern and fresh. Excellent!')
Review.create!(user: userA6, meal: mealA2, rating: 4, content: 'A very creamy and generous gratin. Loved it!')
Review.create!(user: userA6, meal: mealA3, rating: 5, content: 'Very fine dish, the salmon is just perfectly cooked. It impressed all my friends coming for dinner. Will definitely order again.')
Review.create!(user: userA7, meal: mealA3, rating: 5, content: "Best Salmon I've ever eaten")
Review.create!(user: userD1, meal: mealA4, rating: 5, content: 'Just wow!')
Review.create!(user: userD2, meal: mealA4, rating: 4, content: 'I really loved it. Warning, it can be a bit spicy.')
Review.create!(user: userA5, meal: mealA5, rating: 5, content: '(Almost) better of the one of my grandmother.')
Review.create!(user: userA7, meal: mealA5, rating: 5, content: "Best Salmon I've ever eaten")

# Review for the octopus
Review.create!(user: userA7, meal: mealA4, rating: 5, content: 'Henri... Les filles lui disent merci!')
Review.create!(user: userA5, meal: mealA4, rating: 5, content: 'This stew will is delicious, I highly recommend!')
Review.create!(user: userA8, meal: mealA4, rating: 4, content: 'Loved the octopus! ')
Review.create!(user: userA9, meal: mealA4, rating: 5, content: 'Amazing, simply amazing!')
Review.create!(user: userJ3, meal: mealA4, rating: 3, content: 'The octopus is perfeclty cooked but overall it was too spicy for mee.')
Review.create!(user: userJ4, meal: mealA4, rating: 5, content: 'Henri is passionate and cooks amazingly well. Will order again!')
Review.create!(user: userJ1, meal: mealA4, rating: 5, content: 'Perfect')

# Review for the zucchini gratin
Review.create!(user: userJ1, meal: mealA2, rating: 4, content: 'I ordered the Zucchini Gratin for my whole family. We just loved it!')
Review.create!(user: userA5, meal: mealA2, rating: 5, content: 'This gratin is really good, I recommend!')
Review.create!(user: userA8, meal: mealA2, rating: 4, content: 'Loved the Zucchini! ')
Review.create!(user: userA9, meal: mealA2, rating: 5, content: 'Perfect for the summer')
Review.create!(user: userJ3, meal: mealA2, rating: 3, content: 'The zucchini are perfeclty cooked but overall it was a bit too creamy for mee.')
Review.create!(user: userJ4, meal: mealA2, rating: 5, content: 'Henri is passionate and cooks amazingly well. Will order again!')
Review.create!(user: userJ1, meal: mealA2, rating: 5, content: 'Perfect')

# Review for the Red bean, carrot and kale stew
Review.create!(user: userJ6,  meal: mealC1, rating: 4, content: 'Nice and tasteful, this guy definitely knows how to cook vegetables')
Review.create!(user: userJ7,  meal: mealC1, rating: 5, content: 'This wonderful stew reminded of my trip to Sri Lanka. Generous and conforting!')
Review.create!(user: userJ8,  meal: mealC1, rating: 4, content: 'Finally vegan food on Food Next Door. So Happy :) Keep the good work guys.')
Review.create!(user: userJ9,  meal: mealC1, rating: 5, content: 'Very fine stew, the vegetables release their full taste. A pleasure !')
Review.create!(user: userJ10, meal: mealC1, rating: 5, content: 'Really tasteful!')


puts("Creating Weekdays...")
(14..30).each do |day|
WeekDay.create!(meal: mealJ1, pick_up_time_start: Time.zone.local(2018,06,day,21,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,22,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,20,00,00),
                              doses: 5,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealA1, pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,20,00,00),
                              doses: 8,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealC1, pick_up_time_start: Time.zone.local(2018,06,day,20,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,22,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,30,00),
                              doses: 4,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealD1, pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,20,00,00),
                              doses: 6,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealJ2, pick_up_time_start: Time.zone.local(2018,06,day,22,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,23,00,00),
                              last_order_time:    Time.zone.local(2018,06,day,21,00,00),
                              doses: 7,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealA2, pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,00,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,00,00),
                              doses: 3,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealC2, pick_up_time_start: Time.zone.local(2018,06,day,20,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,00,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,30,00),
                              doses: 8,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealD2, pick_up_time_start: Time.zone.local(2018,06,day,20,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,00,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,30,00),
                              doses: 6,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealJ3, pick_up_time_start: Time.zone.local(2018,06,day,19,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,20,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,18,30,00),
                              doses: 7,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealA3, pick_up_time_start: Time.zone.local(2018,06,day,19,30,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,00,00),
                              doses: 5,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealC3, pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,30,00),
                              doses: 9,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealD3, pick_up_time_start: Time.zone.local(2018,06,day,21,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,22,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,30,00),
                              doses: 5,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealJ4, pick_up_time_start: Time.zone.local(2018,06,day,21,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,22,00,00),
                              last_order_time:    Time.zone.local(2018,06,day,20,00,00),
                              doses: 12,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealA4, pick_up_time_start: Time.zone.local(2018,06,day,20,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,23,00,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,00,00),
                              doses: 15,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealC4, pick_up_time_start: Time.zone.local(2018,06,day,20,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,00,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,30,00),
                              doses: 4,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealJ5, pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,21,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,20,00,00),
                              doses: 10,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealA5, pick_up_time_start: Time.zone.local(2018,06,day,20,00,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,22,30,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,30,00),
                              doses: 7,
                              date: Date.new(2018,06,day))
WeekDay.create!(meal: mealC5, pick_up_time_start: Time.zone.local(2018,06,day,20,30,00),
                              pick_up_time_end:   Time.zone.local(2018,06,day,22,00,00),
                              last_order_time:    Time.zone.local(2018,06,day,19,00,00),
                              doses: 11,
                              date: Date.new(2018,06,day))
#puts day
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


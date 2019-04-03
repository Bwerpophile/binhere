# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "clean up DB"

Bin.destroy_all
User.destroy_all

puts "Start database creation... "


puts "Victorine creation..."

victorine = User.create!(
  user_name: 'Victo',
  first_name: 'Victorine',
  last_name: 'Bramard',
  address: '12 rue Emile Pehant',
  email: 'victo@gmail.com',
  password: 'password',
  avatar: File.open(Rails.root.join('db/fixtures/users/victorine.jpg')),
)

joris = User.create!(
  user_name: 'Jojo',
  first_name: 'Joris',
  last_name: 'Lespagnol',
  address: '2 rue haute casserie',
  email: 'jojo@gmail.com',
  password: 'password',
  avatar: File.open(Rails.root.join('db/fixtures/users/joris.jpg')),
)

boby = User.create!(
  user_name: 'Bobolebobo',
  first_name: 'Boby',
  last_name: 'Glucuronolactone',
  address: '23 rue des saisies',
  email: 'bobo29@hotmail.fr',
  password: 'password',
  avatar: File.open(Rails.root.join('db/fixtures/users/boby.jpg')),
)

jimmy = User.create!(
  user_name: 'jimjim',
  first_name: 'Jimmy',
  last_name: 'Le Rouzic',
  address: '32 rue deshoulieres',
  email: 'jimmy@gmail.com',
  password: 'password',
  avatar: File.open(Rails.root.join('db/fixtures/users/jimmy.jpg')),
)

matthieu = User.create!(
  user_name: 'mat',
  first_name: 'Matthieu',
  last_name: 'Quetin',
  address: '10 rue emile Pehant',
  email: 'mat@gmail.com',
  password: 'password',
  avatar: File.open(Rails.root.join('db/fixtures/users/matthieu.jpg')),
)

simon = User.create!(
  user_name: 'Simsim',
  first_name: 'Simon',
  last_name: 'Keryhuel',
  address: '123 rue Jean baptiste vigier',
  email: 'keryhuel.simon@gmail.com',
  password: 'password',
  avatar: File.open(Rails.root.join('db/fixtures/users/simon.jpg')),
)


puts "Victorine is behind you ..."
puts "Starting trashes creation ..."

poubelle_carton1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin1.jpg')),
  kind: 'carton',
  name: 'El nogaw',
  address: '14 Rue Beauregard, 44000 Nantes',
  latitude: 47.2134354,
  longitude: -1.5556044,
  user: simon,
)

poubelle_carton2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin2.jpg')),
  kind: 'carton',
  name: 'Edain',
  address: '26 Rue Stanislas Baudry, 44400 Nantes',
  latitude: 47.2181645,
  longitude: -1.5430119,
  user: matthieu,
)

poubelle_carton3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin3.jpg')),
  kind: 'carton',
  name: 'Fujitsu',
  address: '7 Impasse Saint-Laurent, 44000 Nantes',
  latitude: 47.2183730,
  longitude: -1.5501451,
  user: joris,
)

poubelle_carton4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin4.jpg')),
  kind: 'carton',
  name: 'Tonc',
  address: '6 Place Aristide Briand, 44003 Nantes',
  latitude: 47.2177317,
  longitude: -1.5633201,
  user: victorine,
)

poubelle_carton5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin5.jpg')),
  kind: 'carton',
  name: 'Jem',
  address: '13 Rue de la Juiverie, 44000 Nantes',
  latitude: 47.2154289,
  longitude: -1.5530633,
  user: jimmy,
)

poubelle_menagere1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin6.jpg')),
  kind: 'menager',
  name: 'Donald Trump',
  address: 'Rue de Talensac, 44009 Nantes',
  latitude: 47.2212440,
  longitude: -1.5579771,
  user: simon,
)

poubelle_menagere2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin7.jpg')),
  kind: 'menager',
  name: 'Chocolatine',
  address: '12 Rue Paul Bellamy, 44000 Nantes',
  latitude: 47.2213460,
  longitude: -1.5557241,
  user: joris,
)

poubelle_menagere3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin8.jpg')),
  kind: 'menager',
  name: 'Baleine',
  address: 'Rue Sully, 44000 Nantes',
  latitude: 47.2206028,
  longitude: -1.5507245,
  user: matthieu,
)

poubelle_menagere4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin9.jpg')),
  kind: 'menager',
  name: 'Monster',
  address: '31 Place Viarme, 44000 Nantes',
  latitude: 47.2200198,
  longitude: -1.5626764,
  user: victorine,
)

poubelle_menagere5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin10.jpg')),
  kind: 'menager',
  name: 'Mcdonald',
  address: '5 Place Maréchal Foch, 44000 Nantes',
  latitude: 47.2191746,
  longitude: -1.5503382,
  user: jimmy,
)

glassbin1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container2.jpg')),
  kind: 'verre',
  name: 'Renault',
  address: 'Chaussée de la Madeleine, 44000 Nantes',
  latitude: 47.212563,
  longitude: -1.553234,
  user: simon,
)

glassbin2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container3.jpg')),
  kind: 'verre',
  name: 'H&M',
  address: '10 Quai Turenne, 44000 Nantes',
  latitude: 47.212585,
  longitude: -1.555094,
  user: joris,
)

glassbin3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container4.jpg')),
  kind: 'verre',
  name: 'Samsung',
  address: '128 Allée Brancas, 44000 Nantes',
  latitude: 47.213811,
  longitude: -1.556244,
  user: matthieu,
)

glassbin4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container1.jpg')),
  kind: 'verre',
  name: 'Gwendolyn',
  address: '6 Allée de la Maison Rouge, 44000 Nantes',
  latitude: 47.212944,
  longitude: -1.550890,
  user: jimmy,
)

glassbin5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container5.jpg')),
  kind: 'verre',
  name: 'Adèle',
  address: "1 Allée de l'île Gloriette, 44000 Nantes",
  latitude: 47.211347,
  longitude: -1.556855,
  user: matthieu,
)

plasticbin1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique1.jpg')),
  kind: 'plastique',
  name: 'Contrex',
  address: 'Allée Jean Bart, 44000 Nantes',
  latitude: 47.214831,
  longitude: -1.555654,
  user: simon,
)

plasticbin2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique2.jpg')),
  kind: 'plastique',
  name: 'VirtualDJ',
  address: 'Place du Commerce, 44000 Nantes',
  latitude: 47.213293,
  longitude: -1.558250,
  user: jimmy,
)

plasticbin3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique3.jpg')),
  kind: 'plastique',
  name: 'Les gens',
  address: 'Bouffay, 44000 Nantes',
  latitude: 47.214569,
  longitude: -1.553454,
  user: simon,
)

plasticbin4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique4.jpg')),
  kind: 'plastique',
  name: 'A la mano',
  address: 'Rue Emile Pehant, 44000 Nantes',
  latitude: 47.212289,
  longitude: -1.548780,
  user: joris,
)

plasticbin5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique5.jpg')),
  kind: 'plastique',
  name: 'Les fleurs du malte',
  address: "Avenue de l'Hôtel Dieu, 44000 Nantes",
  latitude: 47.211509,
  longitude: -1.550971,
  user: matthieu,
)

reviews1 = Review.create!(
  name: 'Peut mieux faire' ,
  description:'Et bien c est une poubelle tout ce qu il y a de plus basique, cependant des jeunes laisses leur bouteilles de verre au pied du container parfois',
  user: matthieu,
  bin: glassbin1,
)

reviews2 = Review.create!(
  name: 'Super' ,
  description:'D habitude je me rend toujours à la poubelle plus au nord mais grace a binhere j ai remarqué que celle-ci était plus proche de chez moi, elle est super clean et il y a toujours de la place, merci Bin here !!',
  user: joris,
  bin: glassbin2,
)

reviews3 = Review.create!(
  name: 'nul' ,
  description:'Beaucoup trop de gens utilise cette poubelle ! C est parfois à croire que les éboueurs ne passe plus !',
  user: matthieu,
  bin: glassbin3,
)

reviews4 = Review.create!(
  name: 'une poubelle' ,
  description:'Bon on m a demandé de donner une review sur une poubelle, j aime bien le concept, poubelle clean, lieu clean.',
  user: jimmy,
  bin: glassbin4,
)
reviews5 = Review.create!(
  name: 'sale' ,
  description:'Cette poubelle est nauséabonde, je ne recommande pas',
  user: simon,
  bin: plasticbin1,
)
reviews6 = Review.create!(
  name: 'une belle poubelle' ,
  description:'Cette poubelle est vraiment pratique, je suis content de l avoir découverte',
  user: matthieu,
  bin: plasticbin2,
)
reviews7 = Review.create!(
  name: 'Merci' ,
  description:'Moi qui adore le tri je suis ravi d avoir apris l existence de cette poubelle plastique dans mon quartier, un grand merci a binhere pour leur travail !',
  user: simon,
  bin: plasticbin3,
)
reviews8 = Review.create!(
  name: 'Bon' ,
  description:'Laisser un commentaire sur une poubelle, pourquoi pas? Et bien cette poubelle est propre est bien désservie par les eboueurs',
  user: victorine,
  bin: poubelle_menagere1,
)
review9 = Review.create!(
  name: 'pas mal' ,
  description:'Cette poubelle est pas mal mais je préfère cette a Rue de sully',
  user: jimmy,
  bin: poubelle_menagere2,
)
reviews10 = Review.create!(
  name: 'oui' ,
  description:'Je dit OUI, cette poubelle est tout le temps parfaitement propre et l odeur très agréable, cela fait plaisirs de voir que des gens prennent encore soin des lieux publics',
  user: joris,
  bin: poubelle_menagere3,
)

reviews10 = Review.create!(
  name: 'Best' ,
  description:'La meilleure poubelle carton du quartier, rien a dire, toujours de la place et très accessible',
  user: victorine,
  bin: poubelle_carton1,
)

reviews10 = Review.create!(
  name: 'marre' ,
  description:'cest vraiment nimporte quoi, même pour jeter du carton les gens arrivent a etre sale, marre !',
  user: matthieu,
  bin: poubelle_carton2,
)

reviews10 = Review.create!(
  name: 'yes' ,
  description:'I was visiting Nantes and thanks god ive heard ot binhere? before, this bin is very usefull, thanks !',
  user: simon,
  bin: poubelle_carton3,
)

  GetBinsFromNantesAPIService.new.call


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
  reviews: ["Poubelle propre, vidée souvent.",
            "D'habitude je me rend toujours à la poubelle plus au nord mais grâce a binhere j'ai remarqué que celle-ci était plus proche de chez moi, elle est super clean et il y a toujours de la place, merci Bin here !!"],
)

poubelle_carton2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin2.jpg')),
  kind: 'carton',
  name: 'Edain',
  address: '26 Rue Stanislas Baudry, 44400 Nantes',
  latitude: 47.2181645,
  longitude: -1.5430119,
  reviews: ["Toujours blindée, un effort doit être fait, j'espère que BinHere peut faire bouger les choses !",
            "Beaucoup trop de gens utilise cette poubelle ! C'est parfois à croire que les éboueurs ne passe plus !"],
)

poubelle_carton3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin3.jpg')),
  kind: 'carton',
  name: 'Fujitsu',
  address: '7 Impasse Saint-Laurent, 44000 Nantes',
  latitude: 47.2183730,
  longitude: -1.5501451,
  reviews: ["Poubelle pleine et non entretenue.",
            "Bon on m'a demandé de donner une review sur une poubelle, j'aime bien le concept, poubelle clean, lieu clean."],
)

poubelle_carton4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin4.jpg')),
  kind: 'carton',
  name: 'Tonc',
  address: '6 Place Aristide Briand, 44003 Nantes',
  latitude: 47.2177317,
  longitude: -1.5633201,
  reviews: ["Poubelle bien entretenue, merci.",
            "Poubelle pleine et non entretenue."],
)

poubelle_carton5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin5.jpg')),
  kind: 'carton',
  name: 'Jem',
  address: '13 Rue de la Juiverie, 44000 Nantes',
  latitude: 47.2154289,
  longitude: -1.5530633,
  reviews: ["Rien à dire, poubelle propre et à proximité de chez moi :-)",
            "D'habitude je me rend toujours à la poubelle plus au nord mais grâce a binhere j'ai remarqué que celle-ci était plus proche de chez moi, elle est super clean et il y a toujours de la place, merci Bin here !!"],
)

poubelle_menagere1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin6.jpg')),
  kind: 'menager',
  name: 'Donald Trump',
  address: 'Rue de Talensac, 44009 Nantes',
  latitude: 47.2212440,
  longitude: -1.5579771
)

poubelle_menagere2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin7.jpg')),
  kind: 'menager',
  name: 'Chocolatine',
  address: '12 Rue Paul Bellamy, 44000 Nantes',
  latitude: 47.2213460,
  longitude: -1.5557241
)

poubelle_menagere3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin8.jpg')),
  kind: 'menager',
  name: 'Baleine',
  address: 'Rue Sully, 44000 Nantes',
  latitude: 47.2206028,
  longitude: -1.5507245
)

poubelle_menagere4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin9.jpg')),
  kind: 'menager',
  name: 'Monster',
  address: '31 Place Viarme, 44000 Nantes',
  latitude: 47.2200198,
  longitude: -1.5626764
)

poubelle_menagere5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin10.jpg')),
  kind: 'menager',
  name: 'Mcdonald',
  address: '5 Place Maréchal Foch, 44000 Nantes',
  latitude: 47.2191746,
  longitude: -1.5503382
)

glassbin1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container2.jpg')),
  kind: 'verre',
  name: 'Renault',
  address: 'Chaussée de la Madeleine, 44000 Nantes',
  latitude: 47.212563,
  longitude: -1.553234,
  reviews: ["Poubelle bien entretenue, merci.",
            "Poubelle pleine et non entretenue."],
)

glassbin2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container3.jpg')),
  kind: 'verre',
  name: 'H&M',
  address: '10 Quai Turenne, 44000 Nantes',
  latitude: 47.212585,
  longitude: -1.555094,
  reviews: ["Poubelle pleine et non entretenue.",
            "Bon on m'a demandé de donner une review sur une poubelle, j'aime bien le concept, poubelle clean, lieu clean."],
)

glassbin3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container4.jpg')),
  kind: 'verre',
  name: 'Samsung',
  address: '128 Allée Brancas, 44000 Nantes',
  latitude: 47.213811,
  longitude: -1.556244,
  reviews: ["Poubelle bien desservie, mais dommage que le vide soit fait à 3h du matin..",
            "Cette poubelle est nauséabonde, je ne recommande pas"],
)

glassbin4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container1.jpg')),
  kind: 'verre',
  name: 'Gwendolyn',
  address: '6 Allée de la Maison Rouge, 44000 Nantes',
  latitude: 47.212944,
  longitude: -1.550890,
  reviews: ["Rien à dire, poubelle propre et à proximité de chez moi :-)",
            "D'habitude je me rend toujours à la poubelle plus au nord mais grâce a binhere j'ai remarqué que celle-ci était plus proche de chez moi, elle est super clean et il y a toujours de la place, merci Bin here !!"],
)

glassbin5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container5.jpg')),
  kind: 'verre',
  name: 'Adèle',
  address: "1 Allée de l'île Gloriette, 44000 Nantes",
  latitude: 47.211347,
  longitude: -1.556855,
  reviews: ["Poubelle bien entretenue, le vide n'est pas fait durant la nuit, c'est un plus !",
            "Et bien c'est une poubelle tout ce qu'il y a de plus basique, cependant des jeunes laisses leur bouteilles de verre au pied du container parfois"],
)

plasticbin1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique1.jpg')),
  kind: 'plastique',
  name: 'Contrex',
  address: 'Allée Jean Bart, 44000 Nantes',
  latitude: 47.214831,
  longitude: -1.555654
)

plasticbin2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique2.jpg')),
  kind: 'plastique',
  name: 'VirtualDJ',
  address: 'Place du Commerce, 44000 Nantes',
  latitude: 47.213293,
  longitude: -1.558250,
)

plasticbin3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique3.jpg')),
  kind: 'plastique',
  name: 'Les gens',
  address: 'Bouffay, 44000 Nantes',
  latitude: 47.214569,
  longitude: -1.553454,
)

plasticbin4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique4.jpg')),
  kind: 'plastique',
  name: 'A la mano',
  address: 'Rue Emile Pehant, 44000 Nantes',
  latitude: 47.212289,
  longitude: -1.548780,
)

plasticbin5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique5.jpg')),
  kind: 'plastique',
  name: 'Les fleurs du malte',
  address: "Avenue de l'Hôtel Dieu, 44000 Nantes",
  latitude: 47.211509,
  longitude: -1.550971,
)

puts "Fake Database has been created and Victorine is still behind you..."



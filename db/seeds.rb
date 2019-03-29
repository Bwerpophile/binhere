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
  avatar: File.open(Rails.root.join('db/fixtures/users/victorine.jpg'))
)

puts "Victorine is behind you ..."
puts "Starting trashes creation ..."

poubelle_carton1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin1.jpg')),
  kind: 'carton',
  name: 'Mat',
  address: '14 Rue Beauregard, 44000 Nantes',
  latitude: 47.2134354,
  longitude: -1.5556044,
  reviews: "Poubelle propre, vidée souvent."
)

poubelle_carton2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin2.jpg')),
  kind: 'carton',
  name: 'Jor',
  address: '26 Rue Stanislas Baudry, 44400 Nantes',
  latitude: 47.2181645,
  longitude: -1.5430119,
  reviews: "Toujours blindée, un effort doit être fait, j'espère que BinHere peut faire bouger les choses !",
)

poubelle_carton3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin3.jpg')),
  kind: 'carton',
  name: 'Sim',
  address: '7 Impasse Saint-Laurent, 44000 Nantes',
  latitude: 47.2183730,
  longitude: -1.5501451,
  reviews: "Poubelle pleine et non entretenue.",
)

poubelle_carton4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin4.jpg')),
  kind: 'carton',
  name: 'Jim',
  address: '6 Place Aristide Briand, 44003 Nantes',
  latitude: 47.2177317,
  longitude: -1.5633201,
  reviews: "Poubelle bien entretenue, merci.",
)

poubelle_carton5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin5.jpg')),
  kind: 'carton',
  name: 'Jem',
  address: '13 Rue de la Juiverie, 44000 Nantes',
  latitude: 47.2154289,
  longitude: -1.5530633,
  reviews: "Rien à dire, poubelle propre et à proximité de chez moi :-)",
)

poubelle_menagere1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin6.jpg')),
  kind: 'menager',
  name: 'John',
  address: 'Rue de Talensac, 44009 Nantes',
  latitude: 47.2212440,
  longitude: -1.5579771
)

poubelle_menagere2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin7.jpg')),
  kind: 'menager',
  name: 'Jacques',
  address: '12 Rue Paul Bellamy, 44000 Nantes',
  latitude: 47.2213460,
  longitude: -1.5557241
)

poubelle_menagere3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin8.jpg')),
  kind: 'menager',
  name: 'Josh',
  address: 'Rue Sully, 44000 Nantes',
  latitude: 47.2206028,
  longitude: -1.5507245
)

poubelle_menagere4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin9.jpg')),
  kind: 'menager',
  name: 'Bruno',
  address: '31 Place Viarme, 44000 Nantes',
  latitude: 47.2200198,
  longitude: -1.5626764
)

poubelle_menagere5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin10.jpg')),
  kind: 'menager',
  name: 'Marcel',
  address: '5 Place Maréchal Foch, 44000 Nantes',
  latitude: 47.2191746,
  longitude: -1.5503382
)

glassbin1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container2.jpg')),
  kind: 'verre',
  name: 'Thib',
  address: 'Chaussée de la Madeleine, 44000 Nantes',
  latitude: 47.212563,
  longitude: -1.553234,
  reviews: "Aucun problème, poubelle propre !",
)

glassbin2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container3.jpg')),
  kind: 'verre',
  name: 'JeanLuc',
  address: '10 Quai Turenne, 44000 Nantes',
  latitude: 47.212585,
  longitude: -1.555094,
  reviews: "La poubelle déborde !",
)

glassbin3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container4.jpg')),
  kind: 'verre',
  name: 'Romain',
  address: '128 Allée Brancas, 44000 Nantes',
  latitude: 47.213811,
  longitude: -1.556244,
  reviews: "Poubelle bien desservie, mais dommage que le vide soit fait à 3h du matin..",
)

glassbin4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container1.jpg')),
  kind: 'verre',
  name: 'Gwendolyn',
  address: '6 Allée de la Maison Rouge, 44000 Nantes',
  latitude: 47.212944,
  longitude: -1.550890,
  reviews: "Rien à dire, ce container n'est jamais plein à craquer.",
)

glassbin5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container5.jpg')),
  kind: 'verre',
  name: 'Adèle',
  address: "1 Allée de l'île Gloriette, 44000 Nantes",
  latitude: 47.211347,
  longitude: -1.556855,
  reviews: "Poubelle bien entretenue, le vide n'est pas fait durant la nuit, c'est un plus !",
)

plasticbin1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique1.jpg')),
  kind: 'plastique',
  name: 'Julia',
  address: 'Allée Jean Bart, 44000 Nantes',
  latitude: 47.214831,
  longitude: -1.555654
)

plasticbin2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique2.jpg')),
  kind: 'plastique',
  name: 'Kev',
  address: 'Place du Commerce, 44000 Nantes',
  latitude: 47.213293,
  longitude: -1.558250,
)

plasticbin3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique3.jpg')),
  kind: 'plastique',
  name: 'Johanna',
  address: 'Bouffay, 44000 Nantes',
  latitude: 47.214569,
  longitude: -1.553454,
)

plasticbin4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique4.jpg')),
  kind: 'plastique',
  name: 'Kelly',
  address: 'Rue Emile Pehant, 44000 Nantes',
  latitude: 47.212289,
  longitude: -1.548780,
)

plasticbin5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/container_plastique5.jpg')),
  kind: 'plastique',
  name: 'Paulo',
  address: "Avenue de l'Hôtel Dieu, 44000 Nantes",
  latitude: 47.211509,
  longitude: -1.550971,
)

puts "Fake Database has been created and Victorine is still behind you..."



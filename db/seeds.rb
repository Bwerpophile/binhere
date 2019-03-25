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

  poubelle_papier1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin1.jpg')),
  kind: 'papier',
  name: 'mat',
  longitude: 47.2185254,
  latitude: -1.5671195
)

  poubelle_papier2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin2.jpg')),
  kind: 'papier',
  name: 'jor',
  longitude: 47.2187063,
  latitude: -1.5685133
)
  poubelle_papier3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin3.jpg')),
  kind: 'papier',
  name: 'sim',
  longitude: 47.2186982,
  latitude: -1.5689721
)
  poubelle_papier4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin4.jpg')),
  kind: 'papier',
  name: 'jim',
  longitude: 47.218705,
  latitude: -1.5690397
)
  poubelle_papier5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin5.jpg')),
  kind: 'papier',
  name: 'jem',
  longitude: 47.2183323,
  latitude: -1.5620625
)
  poubelle_menagere1 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin6.jpg')),
  kind: 'menager',
  name: 'john',
  longitude: 47.2185081,
  latitude: -1.5545757
)
poubelle_menagere2 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin7.jpg')),
  kind: 'menager',
  name: 'jacques',
  longitude: 47.2140721,
  latitude: -1.5576681
)
poubelle_menagere3 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin8.jpg')),
  kind: 'menager',
  name: 'josh',
  longitude: 47.2124104,
  latitude: -1.5556372
)
poubelle_menagere4 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin9.jpg')),
  kind: 'menager',
  name: 'bruno',
  longitude: 47.2124234,
  latitude: -1.5556044
)
poubelle_menagere5 = Bin.create!(
  photo: File.open(Rails.root.join('db/fixtures/bins/bin10.jpg')),
  kind: 'menager',
  name: 'marcel',
  longitude: 47.2134354,
  latitude: -1.5556044
)

victorine = User.create!(
  user_name: 'Victo',
  first_name: 'Victorine',
  last_name: 'Bramard',
  address: '12 rue Emile Pehant',
  email: 'victo@gmail.com',
  password: 'password',
  photo: File.open(Rails.root.join('#'))
)

glassbin1 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Verre',
  name: Faker::Games::Pokemon.name,
  address: 'Chaussée de la Madeleine, 44000 Nantes'
  lattitude: 47.212563,
  longitude: -1.553234,
)
glassbin2 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Verre',
  name: Faker::Games::Pokemon.name,
  address: '10 Quai Turenne, 44000 Nantes'
  lattitude: 47.212585,
  longitude: -1.555094,
)
glassbin3 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Verre',
  name: Faker::Games::Pokemon.name,
  address: '128 Allée Brancas, 44000 Nantes'
  lattitude: 47.213811,
  longitude: -1.556244,
)
glassbin4 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Verre',
  name: Faker::Games::Pokemon.name,
  address: '6 Allée de la Maison Rouge, 44000 Nantes'
  lattitude: 47.212944,
  longitude: -1.550890,
)
glassbin5 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Verre',
  name: Faker::Games::Pokemon.name,
  address: "1 Allée de l'île Gloriette, 44000 Nantes",
  lattitude: 47.211347,
  longitude: -1.556855,
)

# Poubelles de plastique
puts 'WIP creation of plastic bins...'

plasticbin1 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Plastique',
  name: Faker::Games::Pokemon.name,
  address: 'Allée Jean Bart, 44000 Nantes'
  lattitude: 47.214831,
  longitude: -1.555654,
)
plasticbin2 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Plastique',
  name: Faker::Games::Pokemon.name,
  address: 'Place du Commerce, 44000 Nantes'
  lattitude: 47.213293,
  longitude: -1.558250,
)
plasticbin3 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Plastique',
  name: Faker::Games::Pokemon.name,
  address: 'Bouffay, 44000 Nantes'
  lattitude: 47.214569,
  longitude: -1.553454,
)
plasticbin4 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Plastique',
  name: Faker::Games::Pokemon.name,
  address: 'Rue Emile Pehant, 44000 Nantes'
  lattitude: 47.212289,
  longitude: -1.548780,
)
plasticbin5 = Bin.create!(
  photo: File.open(Rails.root.join('#')),
  kind: 'Plastique',
  name: Faker::Games::Pokemon.name,
  address: "Avenue de l'Hôtel Dieu, 44000 Nantes",
  lattitude: 47.211509,
  longitude: -1.550971,
)
puts 'Fake Database has been created !'


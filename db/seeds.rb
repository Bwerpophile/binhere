# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clean up DB'

User.destroy_all
Bin.destroy_all

puts 'Start database creation... '

# Users
puts 'WIP creation of users...'

victorine = User.create!(
  user_name: 'Victo',
  first_name: 'Victorine',
  last_name: 'Bramard',
  address: '12 rue Emile Pehant',
  email: 'victo@gmail.com',
  password: 'password',
  photo: File.open(Rails.root.join('#'))
)

# Poubelles de verre
puts 'WIP creation of glass bins...'

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


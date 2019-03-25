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

# USERS
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




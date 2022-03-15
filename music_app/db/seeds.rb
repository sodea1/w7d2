# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Album.destroy_all
Band.destroy_all

b1 = Band.create!(name: 'Grateful Dead')
b2 = Band.create!(name: 'Slightly Stoopid')
b3 = Band.create!(name: 'Zippy Magoo')


a1 = Album.create!(title: "Super Awesome", year: 2000, live: true, band_id: b1.id)
a2 = Album.create!(title: "Zippers ", year: 2010, live: true, band_id: b2.id)
a3 = Album.create!(title: "Kwick Awesome", year: 2003, live: true, band_id: b1.id)
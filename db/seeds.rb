# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


jacobs = Doctor.create({first_name: "Reynold", last_name: "Jacobs", bio: "A really swell guy", location: "Martinez, CA"})
gp = Specialty.create({name: "General Practice"})
jacobs.specialties << gp
rating_1 = Rating.create({score: 5})
rating_2 = Rating.create({score: 4})
jacobs.ratings =  [rating_1, rating_2]
jacobs.save

marten = Doctor.create({first_name: "Kelly", last_name: "Marten", bio: "She has a true passion for family practice", location: "Concord, CA"})
marten.specialties << gp
marten_ratings = Rating.create([{score: 5},{score: 4},{score: 3},{score: 4}])
marten.ratings = marten_ratings
marten.save

abraham = Doctor.create({first_name: "Roger", last_name: "Abraham", bio: "Stand up Doctor", location: "Concord, CA"})
abraham.specialties << gp
abraham_ratings = Rating.create([{score: 3},{score: 3},{score: 3},{score: 4}])
abraham.ratings = abraham_ratings
abraham.save
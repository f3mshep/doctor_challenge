# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


doctor = Doctor.create({name: "Dr. Jacobs", bio: "A really swell guy", location: "Martinez, CA"})
specialty = Specialty.create({name: "General Practice"})
doctor.specialties << specialty
rating_1 = Rating.create({score: 5})
rating_2 = Rating.create({score: 4})
doctor.ratings << rating_1
doctor.ratings << rating_2
doctor.save
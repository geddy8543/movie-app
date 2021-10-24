# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", age: 45, gender: "male" })
actor.save

actor = Actor.new({ first_name: "Reese", last_name: "Witherspoon", known_for: "Sweet Home Alabama", age: 45, gender: "female" })
actor.save

Actor.create(first_name: "Keira", last_name: "Knightley", known_for: "Atonement", age: 36, gender: "female")

movie = Movie.new({ title: "To Catch a Thief", year: 1955, plot: "Cary Grant plays a former catburgler accused of a string of jewelry thefts along the French Riviera", director: "Alfred Hitchcock", english: "yes" })
movie.save

movie = Movie.new({ title: "Raiders of the Lost Ark", year: 1981, plot: "A globe-trotting archaeologist tries to recover the Ark of the Covenant and fights Nazis along the way", director: "Steven Spielberg", english: "yes" })
movie.save

movie = Movie.new({ title: "Casino Royale", year: 2006, plot: "James Bond in a high stakes poker game to bankrupt the terrorist financier Le Chiffre", director: "Martin Campbell", english: "yes" })
movie.save

Movie.create(title: "The Devil Wears Prada", year: 2006, plot: "A recent college grad takes a job as an assistant to the editor of Vogue magazine", director: "David Frankel", english: "yes")

Movie.create(title: "Good Will Hunting", year: 1997, plot: "A young janitor at MIT has a genius IQ and is discovered by a professor", director: "Gus Van Sant", english: "yes")

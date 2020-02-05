# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Movie.destroy_all

genre = ["action", "horreur", "comédie", "drame"]

100.times do
    movie = Movie.create!(name: Faker::Book.title, year: Faker::Number.between(from: 1900, to: 2020), genre: genre[rand(4)], synopsis: Faker::Quote.matz, director: Faker::Name.first_name + " " + Faker::Name.last_name, allocine_rating: Faker::Number.decimal(l_digits: 1, r_digits: 2).round(1), my_rating: nil, already_seen: false)
end
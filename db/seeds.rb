# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# puts 'Cleaning database...'
# movie.destroy_all

puts 'Creating movies...'
10.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: "https://source.unsplash.com/collection/8884129/?#{rand(200)}",
    rating: Faker::Number.between(from: 1, to: 9)
  )
  movie.save!
end

puts 'Finished!'

puts 'Creating lists...'
6.times do
  list = List.new(
    name: Faker::Book.genre
  )
  list.save!
end

puts 'Finished!'

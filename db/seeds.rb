# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'emptying database'
Restaurant.destroy_all

puts 'creating restaurants...'
restaurant = Restaurant.create! name: 'McDO', address: '10 rue paris', phone_number: '0609050403', category: 'chinese'
restaurant2 = Restaurant.create! name: 'BK', address: '11 rue paris', phone_number: '0609050403', category: 'japanese'

puts 'creating reviews'
review = Review.create! content: 'Good Food', rating: 4, restaurant: restaurant
review = Review.create! content: 'Good Food', rating: 2, restaurant: restaurant
review = Review.create! content: 'Good Food', rating: 4, restaurant: restaurant
review = Review.create! content: 'Good Food', rating: 1, restaurant: restaurant2
review = Review.create! content: 'Good Food', rating: 3, restaurant: restaurant2
review = Review.create! content: 'Good Food', rating: 4, restaurant: restaurant2

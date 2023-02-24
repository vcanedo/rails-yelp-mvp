# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
Review.destroy_all
5.times do
  puts 'db destroyed'
  restaurant = Restaurant.create!(name: 'Facciamo', category: 'italian', address: '75090 Firenze')
  3.times do
    yummy = Review.new(content: 'very yummy', rating: 4)
    yummy.restaurant = restaurant
    yummy.save
  end
  puts 'new db created'
end

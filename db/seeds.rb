# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all
contents = [
  [
    "Rice Noodles",
    "Spicy. House special rice noodles with beef intestine. Extra spicy.",
    "mifen.jpg",
    "13.98"
  ], [
    "Veggie",
    "Poached Green Vegetables",
    "veggie.jpg",
    "3.99"
  ], [
    "Salty Crispy Chicken",
    "Many people buy this for dinner at a night market or street stall after work, which is also one of the popular late-night options. We can serve it with some rice and some green vegetables.",
    "chicken.jpg",
    "10"
  ]
]

contents.each do |name, description, image, price|
  Product.create(
    name: name,
    description: description,
    image: image,
    price: price
  )
end
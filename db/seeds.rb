# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

file = URI.open('https://res.cloudinary.com/di13zeuma/image/upload/v1594857207/l8wtpfpbiwdion9hm7gj.jpg')
muzza = Pizzarium.new(name: "Muzzarela", price: 20, description: "molho, queijo")
muzza.image.attach(io: file, filename: 'pizza.jpg', content_type: 'image/jpg')

muzza.save

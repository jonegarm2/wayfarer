# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create(name: "JonJon", email: "jong@email.com", admin: true, password: "cba321")

Destination.destroy_all

Destination.create([
    {name: "South America", description: "A giant futbol continent"}, 
    {name: "North America", description: "New York and Hollywood"},
    {name: "Asia", description: "Far East and great food"},
    {name: "Europe", description: "Castles and History"},
    {name: "Australia", description: "Let's throw another shrimp on the barbie"},
    {name: "Africa", description: "Pyramids, Deserts, and Safaris"},
    {name: "Antarctica", description: "Penguins and snow"}
])

image1 = File.new("#{Rails.root}/db/seed_images/Machu_Picchu.jpg")
image2 = File.new("#{Rails.root}/db/seed_images/America.jpg")
image3 = File.new("#{Rails.root}/db/seed_images/Asia.jpg")
image4 = File.new("#{Rails.root}/db/seed_images/Europe.jpg")
image5 = File.new("#{Rails.root}/db/seed_images/Australia.jpg")
image6 = File.new("#{Rails.root}/db/seed_images/Africa.jpg")
image7 = File.new("#{Rails.root}/db/seed_images/Antarctica.jpg")

Destination.all.each do |destination| 
    destination.pictures << Picture.new({ name: "Jon in Machu Piccu", image: image1 })
end


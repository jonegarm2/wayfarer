# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create(name: "JonJon", email: "jong@email.com", admin: true, password: "cba321")

Destination.create([{name: "South America", description: "A giant futbol continent"}, 
{name: "North America", description: "New York and Hollywood"},
{name: "Asia", description: "Far East and great food"},
{name: "Europe", description: "Castles and History"},
{name: "Australia", description: "Let's throw another shrimp on the barbie"},
{name: "Africa", description: "Pyramids, Deserts, and Safaris"},
{name: "Antarctica", description: "Penguins and snow"}])


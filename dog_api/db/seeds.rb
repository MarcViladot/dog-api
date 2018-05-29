# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Breed.create([
	{name:'Golden Retriever'} #1
])

Dog.create([
	{name:'Rufus', breed_id:'1'} #1
])

Photo.create([
	{url:'https://res.cloudinary.com/dpsci3hpd/image/upload/v1527532391/1.jpg', dog_id:'1'}
])
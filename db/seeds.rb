# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'lucas', password: 'password').save
User.create(username: 'faner', password: 'password').save
User.create(username: 'francisco', password: 'password').save
User.create(username: 'agustin', password: 'password').save
User.create(username: 'laura', password: 'password').save

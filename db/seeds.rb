# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
player1 = User.create(name: "Kim", email: "kim@kim.com", password: 12345)
player2 = User.create(name: "Jay", email: "jay@jay.com", password: 12345)
player3 = User.create(name: "Jess", email: "jess@jess.com", password: 12345)
player4 = User.create(name: "Sean", email: "sean@sean.com", password: 12345)

group1 = Group.create(name: "Team Supa Dupa Fly")


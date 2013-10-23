# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rockgym.create(name: "BKB Somerville", url: "http://www.bkbsomerville.com")
Rockgym.create(name: "MetroRock", url: "http://www.metrorock.com")

Climber.create(email: "one@wall.com", username: "one", skill: 1, password: "foobar88", password_confirmation: "foobar88")
Climber.create(email: "two@wall.com", username: "two", skill: 2, password: "foobar88", password_confirmation: "foobar88")
Climber.create(email: "three@wall.com", username: "three", skill: 3, password: "foobar88", password_confirmation: "foobar88")
Climber.create(email: "four@wall.com", username: "four", skill: 4, password: "foobar88", password_confirmation: "foobar88")
Climber.create(email: "five@wall.com", username: "five", skill: 5, password: "foobar88", password_confirmation: "foobar88")

prob1 = Problem.create(style: "boulder", rating: "V10", color: "green")
prob2 = Problem.create(style: "boulder", rating: "V5+", color: "white")
prob3 = Problem.create(style: "boulder", rating: "V1", color: "brown")
prob4 = Problem.create(style: "top-rope", rating: "5.11", color: "neon yellow")
prob5 = Problem.create(style: "top-rope", rating: "5.14b", color: "red/white")
prob6 = Problem.create(style: "top-rope", rating: "5.13c", color: "orange")
prob7 = Problem.create(style: "lead", rating: "5.10", color: "blue")
prob8 = Problem.create(style: "lead", rating: "5.15a", color: "black and green")

review01 = Review.create(body: "Juggy jug handles.", rating: 3)
review02 = Review.create(body: "Too pinchy!", rating: 4)
review03 = Review.create(body: "Awesome dino at the top.", rating: 3)
review04 = Review.create(body: "Super long but worth it.", rating: 4)
review05 = Review.create(body: "Way easy.", rating: 1)
review06 = Review.create(body: "Nice holds, rough route.", rating: 4)
review07 = Review.create(body: "Great for tall people.", rating: 3)
review08 = Review.create(body: "Super tough if you're not flexible.", rating: 4)
review09 = Review.create(body: "You'll need tons of chalk.", rating: 3)
review10 = Review.create(body: "The start is impossible.", rating: 5)
review11 = Review.create(body: "Easier than rated.", rating: 1)
review12 = Review.create(body: "UGh.", rating: 3)
review13 = Review.create(body: "I puked after.", rating: 3)
review14 = Review.create(body: "Super long.", rating: 4)
review15 = Review.create(body: "Flashed it. Too easy.", rating: 2)
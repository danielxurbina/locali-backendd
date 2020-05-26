# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

u1 = User.create(name: Faker::Name.name, username: Faker::Twitter.screen_name, password: "password123", bio: Faker::Games::Fallout.quote, image_url: "https://static-16.sinclairstoryline.com/resources/media/b18ba64e-3a31-42f2-aa45-e91b1927c03a-b18ba64e3a3142f2aa45e91b1927c03arendition_1_JimGrimesheadshotfinal.png?1547570373818")
u2 = User.create(name: Faker::Name.name, username: Faker::Twitter.screen_name, password: "password123", bio: Faker::Games::Fallout.quote, image_url: "https://www.goldenglobes.com/sites/default/files/articles/cover_images/cobie_smulder_1.jpeg")
u3 = User.create(name: Faker::Name.name, username: Faker::Twitter.screen_name, password: "password123", bio: Faker::Games::Fallout.quote, image_url: "https://t3me.com/en/wp-content/uploads/sites/2/2018/08/Male-Beach_iphone_0655.jpg")
u4 = User.create(name: Faker::Name.name, username: Faker::Twitter.screen_name, password: "password123", bio: Faker::Games::Fallout.quote, image_url: "https://t3me.com/en/features/selfie-shootout-why-the-huawei-nova-3-takes-better-selfies-than-the-iphone-x-and-the-samsung-galaxy-a8/attachment/fshnor/")
u5 = User.create(name: Faker::Name.name, username: Faker::Twitter.screen_name, password: "password123", bio: Faker::Games::Fallout.quote, image_url: "https://1qxya61uvyue18mpsx3zc8om-wpengine.netdna-ssl.com/wp-content/uploads/sites/2/2017/05/Rocio-500x500.jpg")

f1 = Follow.create(follower_id: u1.id, followee_id: u2.id)
f2 = Follow.create(follower_id: u2.id, followee_id: u3.id)
f3 = Follow.create(follower_id: u3.id, followee_id: u4.id)
f4 = Follow.create(follower_id: u4.id, followee_id: u5.id)
f5 = Follow.create(follower_id: u5.id, followee_id: u1.id)

e1 = Event.create(user_id: u1.id, location: Faker::Address.city ,title: "Jazz Night", date: Faker::Date.forward(days: 23), description: Faker::Books::Dune.quote, image_url: "https://m.media-amazon.com/images/I/71uv5HyNxaL._SS500_.jpg", price: 0)
e2 = Event.create(user_id: u2.id, location: Faker::Address.city ,title: "Photography Lesson", date: Faker::Date.forward(days: 23), description: Faker::Books::Dune.quote, image_url: "https://www.alluvit.com/images/exposure-triangle-header.jpg", price: 0)
e3 = Event.create(user_id: u3.id, location: Faker::Address.city ,title: "Soccer at the park", date: Faker::Date.forward(days: 23), description: Faker::Books::Dune.quote, image_url: "https://previews.123rf.com/images/jackf/jackf1712/jackf171202180/91241912-company-of-kids-playing-football-on-the-playground-in-park.jpg", price: 0)
e4 = Event.create(user_id: u4.id, location: Faker::Address.city ,title: "Learn about Art at the Museum", date: Faker::Date.forward(days: 23), description: Faker::Books::Dune.quote, image_url: "https://media.getty.edu/iiif/image/4061ded0-82d9-4abc-bcaa-615eae0146e8/full/3000,/0/default.jpg", price: 0)
e5 = Event.create(user_id: u5.id, location: Faker::Address.city ,title: "Rooftop Party", date: Faker::Date.forward(days: 23), description: Faker::Books::Dune.quote, image_url: "https://i.pinimg.com/originals/b1/a4/88/b1a4882400dc8f84fc7a5b6db9d6e651.jpg", price: 0)

j1 = JoinedEvent.create(user_id: u1.id, event_id: e1.id)
j2 = JoinedEvent.create(user_id: u2.id, event_id: e2.id)
j3 = JoinedEvent.create(user_id: u3.id, event_id: e3.id)
j4 = JoinedEvent.create(user_id: u4.id, event_id: e4.id)
j5 = JoinedEvent.create(user_id: u5.id, event_id: e5.id)
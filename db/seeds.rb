# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.create({title:'testvideo1', description:'testing the videos first', url:'https://www.youtube.com/watch?v=cUFVR5sgbt0'})
Video.create({title:'testvideo2', description:'testing the videos second', url:'https://www.youtube.com/watch?v=cUFVR5sgbt0'})
Video.create({title:'testvideo3', description:'testing the videos third', url:'https://www.youtube.com/watch?v=cUFVR5sgbt0'})

User.create({name:'Dan', email:'mcquillandan@gmail.com',password:'password123',password_confirmation:'password123'})
User.create({name:'Dan2', email:'mcquillandan2@gmail.com',password:'password123',password_confirmation:'password123'})

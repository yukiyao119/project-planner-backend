# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all 
User.destroy_all 
User.reset_pk_sequence 

# Project.destroy_all 
Project.reset_pk_sequence

user1 = User.create(username: "legotech", password: "brianwong")

project1 = Project.create(name: "CLI application", details: "this is my first project" , done: false , user_id: user1.id)
project2 = Project.create(name: "Ruby on Rails application", details: "Rails rails rails rails" , done: false , user_id: user1.id)
project3 = Project.create(name: "Javascript application", details: "start to fetch" , done: false , user_id: user1.id)
project4 = Project.create(name: "React application", details: "make it better than Trello" , done: false , user_id: user1.id)
project5 = Project.create(name: "Mod 5 Project LOL", details: "world peace" , done: false , user_id: user1.id)

note1 = Note.create(content: "This is a brand new product that we create to attract more users!", user_id: user1.id, project_id: project1.id)

note2 = Note.create(content: "Review what you learnt so far.", user_id: user1.id, project_id: project5.id)
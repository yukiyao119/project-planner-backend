# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Note.destroy_all
Project.destroy_all 
User.destroy_all 

User.reset_pk_sequence 
Project.reset_pk_sequence
Note.reset_pk_sequence 

user1 = User.create(username: "legotech", password: "brianwong")

project1 = Project.create(name: "Get ready for job-hunting", details: "Get in touch with the career coach and schedule meeting. Do these 2 things before meeting:  1. Fill out a Career Survey via Learn. Please be sure this is completed as the information you share will help to focus our time together.  2. Make sure you have access to the Career Prep Curriculum in Learn." , done: false , user_id: user1.id)
project2 = Project.create(name: "React application for review", details: "React React React React React React React React React React React React React React React React React React React React React React React React!" , done: false , user_id: user1.id)
project3 = Project.create(name: "JavaScript Quiz Project", details: "Everyone wants to quiz their brains sometimes. Whether it is a quiz determining which career path is best suited for the participants or testing the participant’s knowledge on a current topic, quizzes are both fun and useful.
For instance, you can create that asks 4 multiple-choice questions. While working on this project, you will learn plenty about data management and creating a scoring system in programming." , done: false , user_id: user1.id)
project4 = Project.create(name: "Weather App with React", details: "Display a 5-day weather forecast, where each day shows the high and low temperatures, and an image for sunny/rainy/cloudy/snowy. Use fake, hard-coded data until you’ve got everything rendering correctly." , done: false , user_id: user1.id)
project5 = Project.create(name: "Build a Product Landing Page", details: "This project will require a solid knowledge of both HTML and CSS. You will be creating columns and aligning items within the columns; doing basic editing of images such as cropping and resizing to create perfect-sized product images for your web page." , done: false , user_id: user1.id)

note1 = Note.create(content: "This is a brand new product that we create to attract more users!", user_id: user1.id, project_id: project1.id)

note2 = Note.create(content: "Review what you learnt so far.", user_id: user1.id, project_id: project5.id)
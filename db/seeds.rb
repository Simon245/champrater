# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.destroy_all

User.create([
    {email: "simonball245@gmail.com", password: "123"},
    {email: "simon245@gmail.com", password: "123"}
    ])

Character.destroy_all

Character.create({name: "Blitzcrank", image: "Blitzcrank_0.jpg", votes: 0 , total_score: 0})
Character.create({name: "Caitlyn", image: "Caitlyn_0.jpg", votes: 0, total_score: 0})
Character.create({name: "Fiddlesticks", image: "Fiddlesticks_0.jpg", votes: 0, total_score: 0})
Character.create({name: "Jinx", image: "Jinx_0.jpg", votes: 0, total_score: 0})
Character.create({name: "Miss Fortune", image: "Miss Fortune_0.jpg", votes: 0, total_score: 0})
Character.create({name: "Olaf", image: "Olaf_0.jpg", votes: 0, total_score: 0})
Character.create({name: "Singed", image: "Singed_0.jpg", votes: 0, total_score: 0})
Character.create({name: "Tryndamere", image: "Tryndamere_0.jpg", votes: 0, total_score: 0})
Character.create({name: "Vi", image: "Vi_0.jpg", votes: 0, total_score: 0})
Character.create({name: "Ziggs", image: "Ziggs_0.jpg", votes: 0, total_score: 0})

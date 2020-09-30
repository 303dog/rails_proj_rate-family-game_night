# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
User.create(username: "Toad20", password: "password")
User.create(username: "Toad21", password: "password")
User.create(username: "Toad22", password: "password")
User.create(username: "Toad23", password: "password")
User.create(username: "Toad24", password: "password")

Game.create(title: "Dragon City", genre: "Collectible", theme: "Fantasy Fighting", num_of_players: "1", description: "Play in alliances and build your collection of dragons and then battle them to climb the ranks." )

Game.create(title: "STOP", genre: "Trivia", theme: "Arcade", num_of_players: "9", description: "Compare wits with friends and family and test your speed with vocabulary" )
Game.create(title: "Words with Friends", genre: "Boardgames", theme: "word ", num_of_players: "9", description: "Test you word knoweldge and score big points against your opponents" )
Game.create(title: "KAHOOT", genre: "Trivia", theme: "Arcade", num_of_players: "9", description: "Who can choose the best answer in the quickest amount of time." )
Game.create(title: "Spades", genre: "Cards", theme: "Cards", num_of_players: "4", description: "Collect books and gain points as you and your teamate work together to win." )


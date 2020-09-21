require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deck.destroy_all
Player.destroy_all
Card.destroy_all 

cost_arr = [1,2,3,4,5,6,7,8,9]
god_cost_arr = [5,6,7,8,9,10]
element_type = ["fire", "water", "wind", "earth", "nature", "dark", "light"]
toughness_arr = [1,2,3,4,5,6]
power_arr = [1,2,3,4,5,6,7,8]

#Faker::Games::DnD
#Faker::Ancient
20.times do 
    Card.create(name: Faker::Ancient.hero, card_type: "Hero", toughness: toughness_arr.sample, power: power_arr.sample, element_type: element_type.sample, set_name: "origin", cost: cost_arr.sample)
end

15.times do 
    Card.create(name: Faker::Ancient.titan, card_type: "Titan", toughness: toughness_arr.sample, power: power_arr.sample, element_type: element_type.sample, set_name: "origin", cost: cost_arr.sample)
end

10.times do 
    Card.create(name: Faker::Ancient.primordial, card_type: "Primordial", toughness: toughness_arr.sample, power: power_arr.sample, element_type: element_type.sample, set_name: "origin", cost: cost_arr.sample)
end

5.times do 
    Card.create(name: Faker::Ancient.god, card_type: "God", toughness: toughness_arr.sample, power: power_arr.sample, element_type: element_type.sample, set_name: "origin", cost: cost_arr.sample)
end
     
Deck.create(name: "adams smashers")
Deck.create(name: "kaladas sleepers")
Deck.create(name: "artemis meatdown")


 

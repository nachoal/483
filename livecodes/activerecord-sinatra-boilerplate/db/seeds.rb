require 'faker'

10.times do |n|
  puts "creating the #{n} restaurant..."
  Restaurant.create!(
    name: Faker::Movies::StarWars.call_sign,
    address: Faker::Movies::StarWars.wookiee_sentence
  )

  puts "Saved the #{n} restaurant!"
end
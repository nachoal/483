# # 1. Ask the user for their age
# puts "What's your age?"
# age = gets.chomp.to_i # We need to convert to integer

# # 2. Check if they are old enough to vote

# # if age >= 18
# #   # 3. Tell the user if they are old enough to vote
# #   puts 'You are old enough to vote! GO VOTE!'
# # else
# #   puts 'You are not old enough :( '
# # end
#      #condition  with question ? what happens if true : what happens if false
# puts age >= 18 ? 'You are old enough to vote!'  : 'You are not old enough'



# Heads or tails game

# # 1. Ask the user for their pick
# puts 'Whats your choice? heads or tails:'
# user_choice = gets.chomp

# # 2. Make the computer pick 
# computer_choice = ['heads', 'tails'].sample

# # 3. Use a ternary to tell the user if it was right or wrong
# puts user_choice == computer_choice ? 'You guessed!' : 'Try again!'

# Store the hour
# hour = Time.now.hour

# if hour < 12
#   puts "Good morning!"
# elsif hour >= 20
#   puts "Good night!"
# elsif hour > 12
#   puts "Good afternoon!"
# else
#   puts "Lunch time!"
# end




# puts "What do you want to do?"
# action = gets.chomp

# case action
# when "read"
#   puts "You are in READ mode"
# when "write"
#   puts "You are in WRITE mode"
# when "exit"
#   puts "Bye Bye"
# else
#   puts "Wrong action"
# end

# return     and condition GUARD CLAUSES
# hour = 'hello'.to_i
# # Guard clause
# return 'Please use a valid hour' if hour.zero?

# if hour < 12
#   puts "Good morning!"
# elsif hour >= 20
#   puts "Good night!"
# elsif hour > 12
#   puts "Good afternoon!"
# else
#   puts "Lunch time!"
# end


# hour = 19

# if (hour > 9 && hour < 12) || (hour > 14 && hour < 18)
#   puts "The shop is opened!"
# else
#   puts "Sorry, the shop is closed..."
# end


# rand picks number between range 1 and 5
# price_to_find = rand(1..2)

# choice = nil     # variable initialization

# until choice == price_to_find
#   puts "How much (between $1 and $5)?"
#   choice = gets.chomp.to_i
#   price_to_find = rand(1..2)
# end

# puts "You won! Price was #{price_to_find}$"



    # num = iteration variable representing each element in the iteration
# for num in [1, 2, 3]
#   puts numb
# end

# ARRAYS

# empty_array = []

#           # Indexes always start at 0!
# beatles = ['paul', 'john', 'ringo', 'Michael']

# # pop to delete at end
# beatles.pop

# # delete_at to delete at an specific index
# beatles.delete_at(1)

# puts 'Beatles split'
# p beatles

# beatles << 'john'

# beatles.push('george')

# # puts 'Beatles reunited'
# # p beatles
# # beatles.push('john')
# # p beatles
# # beatles.delete('john')

# # puts 'john ran away...'

# # p beatles
beatles = ['paul', 'john', 'ringo', 'george']
                # iteration variable
beatles.each do |beatle|
  puts "#{beatle} is in the Beatles"
 end


fruits = ['🥝','🥭','🍈']

fruits.each do |fruit|
  puts "A good fruit: #{fruit}!"
end





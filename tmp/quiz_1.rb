# # # grades = [19, 8, 11, 15, 13]
# # # # TODO: compute and store
# # # sum = 0

# # # grades.each do |grade|
# # #   sum += grade
# # # end
# # # average = sum.to_f / grades.size

# # # p average


# # def capitalize_name(first_name, last_name)
# #   return "#{first_name.capitalize} #{last_name.capitalize}"
# # end

# # p capitalize_name('luis', 'zubia')

# # # concatenation is when you are adding strings together
# # "hello" + "my" "name is " + ' Lady Gaga'
# # # interpolation is when you are pasting a value inside a string
# # name = "Lady Gaga"
# # " hello my name is #{name}"

# # fruits = ["banana", "peach", "watermelon", "orange"] 
# # # Print out "peach" from the fruits array in the terminal
# # # puts fruits[1]
# # # Add an "apple" to the fruits array 
# # # p fruits << 'apple'
# # # Replace "watermelon" by "pear" 
# # fruits[2] = 'pear'
# # p fruits 
# # # Delete "orange"
# # fruits.pop

# # p fruits

# # fruits.delete('peach')

# # p fruits

# # orange.delete



# city = { name: "Paris", population: 2000000 } 

# # Print out the name of the city
# # p city[:name]
# # # Add the Eiffel Tower to city with the `:monument` key
# # city[:monument] = "Eiffel Tower"
# # p city 
# # # Update the population to 2_000_001
# # city[:population] += 1

# # p city 
# # What will the following code return?
# p city[:mayor] 

# # nil 


# Use the map iterator to convert the variable students , an array of arrays, into an array of hashes. 
# Those hashes should have two keys: :name and :age . What is the type of those keys?


students = [[ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ]]


students_with_hash =  students.map { |name, age|  {name: name, age: age} zz}

p students_with_hash
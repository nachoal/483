# students      = [ "Peter", "Mary", "George", "Emma" ]
# student_ages  = [ 24     , 25    , 22      ,  20    ]

# students.each_with_index do |student, index|
#   current_student_age = student_ages[index]
#   puts "#{student} is #{current_student_age} years old"
# end

# # # WITH THIS SYNTAX KEY:
# students_age = {
#   Peter: 24,
#   Mary: 25,
#   George: 22,
#   Emma: 20
# }

# # p students_age[:Mary]

# # WITH ROCKET SYNTAX:
# students_age = {
#   "Peter" => 24,
#   "Mary" => 25,
#   "George" => 22,
#   "Emma" => 20
# }

# # p students_age['George']

# # p students_age['George']


paris = {
  "country" => "France",
  "population" => 2211000
}


# # ADDING VALUE: 
# # paris['language'] = 'French'

# # p paris

# # UPDATE VALUE:
# paris['population'] = 3

# p paris


# # DELETE  VALUE
#             # key
# paris.delete('population')

# p paris


# # EXAMPLE OF DYNAMIC KEY CREATION
# # students      = [ "Peter", "Mary", "George", "Emma" ]

# # empty_hash = {}

# # students.each_with_index do |student, index|
# #   empty_hash["student_#{index + 1}"] = student
# # end

# # p empty_hash


# # hash_with_array = {
#   my_array: [1,2,3,4],
#   new_hash: {
#     my_name: 'Ignacio'
#   }
# }


france = {
  cities: {
    paris: paris
  }
}

# # p hash_with_array[:my_array]

# # p hash_with_array[:new_hash][:my_name]


# #AS LAST METHOD ARGUMENT

# tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# # => <a href='http://lewagon.org' class='btn'>Le Wagon</a>

def tag(tag_name, content, attributes = {})
  # "<#{tag_name}>#{content}</#{tag_name}>"

  # <h1 class='bold'>Hello world</h1>
  formatted_attributes = ''

  attributes.each do |key, value|
    # This works because a string can be added with +=
    # If we only used = the string will be only storing the last key value of the hash
    formatted_attributes += "#{key}='#{value}' "
  end

  # puts formatted_attributes
  "<#{tag_name} #{formatted_attributes}>#{content}</#{tag_name}>"
end

p tag("h1", "Hello world")
# => <h1>Hello world</h1>

p tag("h1", "Hello world", { class: "bold" })
# # => <h1 class='bold'>Hello world</h1>


p tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# # => <a href='http://lewagon.org' class='btn'>Le Wagon</a>

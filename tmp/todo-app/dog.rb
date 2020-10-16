class Dog
  attr_reader :name
  # GETTER AND SETTER
  attr_accessor :color
  # DATA / STATE
  def initialize(name, color)
    @name = name # String
    @color = color # String
  end

  # BEHAVIORS (Class methods, instance methods)

  # Instance method
  def bark
    'Wuff'
  end

  # Self for class methods
  def self.family
    'Mammal'
  end
end


# TESTING AREA:

jesse = Dog.new('jesse pinkman', 'yellow')

# p jesse.name

jesse.color = 'purple'

# p jesse.color

p Dog.family



# Model - Class
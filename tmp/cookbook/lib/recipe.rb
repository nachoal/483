class Recipe
  attr_reader :name, :description, :rating, :prep_time
  attr_accessor :done

  def initialize(name, description, rating, done = false, prep_time)
    @name        = name
    @description = description
    @rating      = rating
    @done        = done # Data type: Boolean
    @prep_time   = prep_time
  end
end

# 1. when adding a new value/State/data to the model we modify it first
# 2.Update the repository (cookbook) save and load methods to include the new attribute
# 3. Update controller and view code to consider new attribute.
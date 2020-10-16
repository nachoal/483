# MODEL: Representation of the thing that we are going to work with (class)
class Task
  attr_reader :title
  attr_accessor :completed
  # DATA / STATE
  # 1. title - String
  # 2. completed - Boolean
  def initialize(title, completed = false)
    @title     = title
    @completed = completed
  end
 
  # Behavior
  def complete!
    @completed = true
  end
end
class Citizen
  attr_reader :first_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age
  end

  def can_vote?
    # if @age > 17
    #   true
    # else
    #   false
    # end
    @age > 17
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end
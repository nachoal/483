class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. Name: #{recipe.name} - Description: #{recipe.description}"
    end
  end

  def ask_for_recipe(attribute)
    puts "Enter the recipe #{attribute}"
    gets.chomp
  end

  def ask_for_recipe_number
    puts 'Enter your selection (recipe number)'

    gets.chomp.to_i - 1
  end
end
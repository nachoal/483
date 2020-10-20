class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{recipe.done ? '[X]' : '[ ]'}#{index + 1}. Name: #{recipe.name} - Description: #{recipe.description} (#{recipe.rating}/5) - Prep time: #{recipe.prep_time}"
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

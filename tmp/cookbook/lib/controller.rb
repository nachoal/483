require_relative 'view'
require_relative 'recipe'
require_relative 'scrape_all_recipes_service'

# require open-uri and nokogiri for scraping
require 'pry-byebug'

class Controller
  # We dont require_relative for cookbook because we are already passing the instance
  def initialize(cookbook)
    @cookbook = cookbook
    @view     = View.new
  end

  def list
    # Receive the recipes from the cookbook
    recipes = @cookbook.all
    # Send the list to the view to PUTS it
    @view.display(recipes)
  end

  def create
    # Ask the name of the recipe to the user in the view
    name = @view.ask_for_recipe('name')
    # Ask the description of the recipe to the user in the view
    description = @view.ask_for_recipe('description')

    # New: Ask for recipe rating
    rating = @view.ask_for_recipe('rating')

    # New: Ask for recipe prep_time
    prep_time = @view.ask_for_recipe('prep time')

    # Create an instance of recipe
    recipe = Recipe.new(name, description, rating, prep_time)
    # Store the instance of recipe in the cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # First print the list of options
    list
    # Ask user what recipe to delete (by index)
    index = @view.ask_for_recipe_number
    # Delete the recipe
    @cookbook.remove_recipe(index)
  end

  def import_recipe
    # Ask the user for what ingredient to search for - VIEW
    ingredient = @view.ask_for_recipe('ingredient')
    # Use the base url to search:
    # Interpolate the search query from the user in the url:
    # Use open-uri and nokogiri to parse the HTML website and store in a variable - First 5 recipes
    found_recipes = ScrapeAllRecipesService.new(ingredient).call

    # display the found recipes
    @view.display(found_recipes)

    # ask the user which recipe to save (ask for number ) and store in variable
    index = @view.ask_for_recipe_number

    selected_recipe = found_recipes[index]
    # Send  the selected recipe to the recipes repository (save)
    @cookbook.add_recipe(selected_recipe)
  end

  def mark_as_done
    # list the recipes
    list
    # ask for recipe index to mark
    index = @view.ask_for_recipe_number

    # mark recipe as done
    @cookbook.mark_recipe_as_done(index)
  end
end

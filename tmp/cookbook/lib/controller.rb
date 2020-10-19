require_relative 'view'
require_relative 'recipe'

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
    # Create an instance of recipe
    recipe = Recipe.new(name, description)
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
    # Use the base url to search: https://dev.to/search?q=INTERPOLATION
    # Ask the user for what recipe to search for - VIEW
    # Interpolate the search query from the user in the url https://dev.to/search?q=#{user_query}
    # require open-uri and nokogiri
    # Use open-uri and nokogiri to parse the HTML website and store in a variable
    # To create a recipe we need the title and description - GET THEM FROM THE PARSED_HTML
    # for all of the results get the title and description
    # Create a recipe (without saving to the repo yet) with the title and description
    # ask the user which recipe to save (ask for number ) and store in variable
    # Send  the selected recipe to the recipes repository (save)
  end
end
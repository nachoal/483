require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file)
    @recipes  = [] # Array of recipe instances
    @csv_file = csv_file

    load_csv
  end

  # CRUD - CREATE, READ, UPDATE, DELETE

  # when we add we need to save to csv
  def add_recipe(recipe)
    @recipes << recipe

    save_csv
  end

  # when we remove, we also save to csv
  def remove_recipe(index)
    @recipes.delete_at(index)

    save_csv
  end

  def all
    @recipes
  end

  def mark_recipe_as_done(index)
    # fetch the recipe from the array by index
    recipe = @recipes[index]
    # update it
    recipe.done = true
    # then save to the csv
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      # 1. extract the csv recipes
      # 2. Make sure that you are converting the data types from string into what you need
      name        = row[0]
      description = row[1]
      rating      = row[2].to_i
      done        = row[3] == 'true'
      prep_time   = row[4]
      # 2. Put into recipes array
      @recipes << Recipe.new(name, description, rating, done, prep_time)
    end
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description, recipe.rating, recipe.done, recipe.prep_time]
      end
    end
  end
end
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

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      # 1. extract the csv recipes
      name        = row[0]
      description = row[1]
      # 2. Put into recipes array
      @recipes << Recipe.new(name, description)
    end
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
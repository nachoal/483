require 'open-uri'
require 'nokogiri'
require 'pry-byebug'

require_relative 'recipe'

class ScrapeAllRecipesService
  def initialize(keyword)
    @keyword = keyword
  end

  def call
    # TODO: return a list of `Recipes` built from scraping the web.

    base_url        = "https://www.allrecipes.com/search/results/?wt=#{@keyword}"
    serialized_file = open(base_url).read
    html_doc        = Nokogiri::HTML(serialized_file)
    found_recipes   = []
    # To create a recipe we need the title and description - GET THEM FROM THE PARSED_HTML
    html_doc.search('.fixed-recipe-card').first(5).each do |html_recipe_card|
      # for all of the results get the title and description
      name = html_recipe_card.search('.fixed-recipe-card__title-link > span').first.text.strip
      description = html_recipe_card.search('.fixed-recipe-card__description').text.strip
      rating = html_recipe_card.search('.stars').first.attribute('data-ratingstars').value.to_i
      recipe_link = html_recipe_card.search('a').first.attributes['href'].value
      serialized_file = open(recipe_link).read
      html_doc        = Nokogiri::HTML(serialized_file)
      prep_time       = html_doc.search('.recipe-meta-item-body').first.text.strip

      # Create a recipe (without saving to the repo yet) with the title and description
      found_recipes << Recipe.new(name, description, rating, prep_time)
    end

    # return the array of found recipes without saving to cookbook
    found_recipes
  end
end
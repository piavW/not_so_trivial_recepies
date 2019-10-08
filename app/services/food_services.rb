require 'rest-client'
require 'json'

module FoodService
  def self.get_recipes
    response = RestClient.get('https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,+flour,+sugar&number=2')
    recipes = JSON.parse(response)
    recipes['recipes']
  end
end
require 'rest-client'
require 'json'

module FoodService
  def self.get_recipes(query)
    binding.pry 
   # response = RestClient.get('https://api.spoonacular.com/recipes/findByIngredients'
   # recipes = JSON.parse(response)
   # recipes['recipes']
  end
end
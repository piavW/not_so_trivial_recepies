require 'rest-client'
require 'json'

module FoodService
  def self.get_recipes(query)
    unless query == nil
      response = RestClient.get(
        'https://api.spoonacular.com/recipes/findByIngredients',
        {
          params: {
            apiKey:  Rails.application.credentials.food_api[:api_key],
            ingredients: query
          }
        }
      )
      recipes = JSON.parse(response)
      binding.pry
    end
  end
end
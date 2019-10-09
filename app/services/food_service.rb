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

      if recipes == []
        "error"
      else
        recipes
      end
    end
  end

  def self.get_single_recipe(query)
    response = RestClient.get(
      'https://api.spoonacular.com/recipes/324694/analyzedInstructions',
      {
        params: {
          apiKey: Rails.application.credentials.food_api[:api_key],
          id: query
        }
      }
    )
    recipes = JSON.parse(response)
  end
end
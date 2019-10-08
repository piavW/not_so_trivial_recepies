class RecipesController < ApplicationController
  def index
    @recipes = FoodService.get_recipes
  end
end
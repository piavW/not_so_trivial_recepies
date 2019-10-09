class RecipesController < ApplicationController
  def index
    @recipes = FoodService.get_recipes(params[:search])
  end

  def show
    @recipe = FoodService.get_single_recipe(params[:search])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:search)
  end
end
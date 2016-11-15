class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    @recipes = Recipe.all
end

def new
  @ingredient = Ingredient.new
end

def create
  Ingredient.create!(ingredient_params)
  redirect_to ingredients_path
end

def show
  @ingredient = Ingredient.find(params[:id])
end

private
def ingredient_params
  params.required(:ingredient).permit(:name, :img_url, :recipe_id)
  end

end

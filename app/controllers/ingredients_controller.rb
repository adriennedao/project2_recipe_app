class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    @recipes = Recipe.all
    # indentation
end

def new
  @recipe = Recipe.find(params[:recipe_id])
  @ingredient = @recipe.Ingredient.new
end

def show
  @ingredient = Ingredient.find(params[:id])
end

def create
  Ingredient.create!(ingredient_params)
  redirect_to ingredients_path
end

def edit
  @recipe = Recipe.find(params[:recipe_id])
  @ingredient = Ingredient.find(params[:id])
end


def destroy
  @ingredient = Ingredient.find(params[:id])
  @Ingredient.destroy
  redirect_to Ingredient_path
end

private
def ingredient_params
  params.required(:ingredient).permit(:name, :img_url, :recipe_id)
  end

end

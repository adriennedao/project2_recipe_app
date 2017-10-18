class IngredientsController < ApplicationController


def index
    @ingredients = Ingredient.all
    @recipes = Recipe.all
end

def show
  @recipe = Recipe.find(params[:recipe_id])
  @ingredient = Ingredient.find(params[:id])
end

def new
  @recipe = Recipe.find(params[:recipe_id])
  @ingredient = @recipe.ingredients.build
end

def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient =@recipe.ingredients.create(ingredient_params)
    redirect_to @recipe
end

def edit
  @ingredient = Ingredient.find(params[:id])
end

def update
  @ingredient = Ingredient.find(params[:id])
  if @ingredient.update_recipes(ingredient_params)
else
  render 'edit'
  end
end

def destroy
  @recipe = Recipe.find(params[:recipe_id])
  @ingredient = Ingredient.find(params[:id])
  @ingredient.destroy
  redirect_to @recipe
end

private

def ingredient_params
  params.required(:ingredient).permit(:name, :img_url)
  end
end

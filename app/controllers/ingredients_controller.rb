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
  #@recipe = Recipe.find(params[:recipe_id])
  @ingredient = Ingredient.find(params[:id])
  redirect_to @ingredient
end

def update
  @ingredient = Ingredient.find(params[:id])
  @ingredient.update(ingredient_params)
  redirect_to ingredient_path(@ingredient)
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

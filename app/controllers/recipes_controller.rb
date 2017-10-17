class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


  def index
    @recipes = Recipe.all
  end


 def create
   Recipe.create!(recipe_params)
   redirect_to recipes_path
 end

  def update
     @recipe = Recipe.find(params[:id])
     if @recipe.update(recipe_params)
     redirect_to recipe_path(@recipe)
  else
    render "edit"
   end
end


def destroy
  @recipe = Recipe.find(params[:id])
  @recipe.destroy
  redirect_to recipes_path
end

private

def recipe_params
  params.require(:recipe).permit(:name, :img_url)
  end
end

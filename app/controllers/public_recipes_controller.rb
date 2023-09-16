class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.includes(%i[recipe_foods user]).where(public: true)
  end
end

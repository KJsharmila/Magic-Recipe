class RecipeController < ApplicationController
  def index
  end
  def search
        @recipe = @recipe.ingredient
        @recipes = Plan::FoodSelection.new(@ingredient).search
        if @recipes.present?
          render :json => {:success => true, :response => @recipes}, :status => 201
        else
          render :json => {:success => false, :errors => ["No recipes for this service providers"]}, :status => 422
        end
      end
end

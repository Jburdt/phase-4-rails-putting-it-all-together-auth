class RecipesController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
      recipes = Recipe.all
      render json: recipes, status: :created
  end

  def create
    if @current_user
      recipe = @current_user.recipes.create!(recipe_params)
      render json: recipe, status: :created 
    else
        render json: { errors: invalid.record.errors.full_messages  }, status: :unprocessable_entity
    end
  end

  private

  #LOGGED IN
  # def logged_in
  #   User.find_by(id: session[:user_id])
  # end

  #Recipe_params
  def recipe_params
    params.permit(:title, :instructions, :minutes_to_complete)
  end

   # INVALID DATA RESPONS
   def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages  }, status: :unprocessable_entity
  end

end

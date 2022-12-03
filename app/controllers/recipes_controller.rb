class RecipesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
    before_action :authorize

    def index 
        render json: Recipe.all
    end

    def create
            user = User.find_by(id: session[:user_id])
            recipe = user.recipes.create!(recipe_params)
            render json: recipe, status: :created
    end

    private 

    def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
    end

    def unprocessable_entity(invalid)
      return render json: { errors: [invalid.record.errors.full_messages] }, status: :unprocessable_entity 
    end

    def authorize
        user = User.find_by(id: session[:user_id])
        return render json: { errors: ["Unauthorized"] }, status: :unauthorized unless session.include? :user_id
    end
    

end

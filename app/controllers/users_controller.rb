class UsersController < ApplicationController

    # skip_before_action :authorize, only: [:index]

    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            return render json: { errors: user.errors.full_messages }, status: :unprocessable_entity unless session.include? :user_id
        end
    end

    def show
        user = User.find_by(id: session[:user_id])
        if user 
            render json: user
        else
            return render json: { errors: "Unauthorized" }, status: :unauthorized unless session.include? :user_id
        end

    end

    private 

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end
end

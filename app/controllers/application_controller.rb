class ApplicationController < ActionController::API
  include ActionController::Cookies

#   rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
#   before_action :authorize
  
#    private 

#    def authorize
#       user = User.find_by(id: session[:user_id])
#      render json: { errors: ['Not Authorized'] }, status: :unauthorized unless session.include? :user_id

#    end

# #   private

# #   def unprocessable_entity(invalid)
# #     return render json: { errors: [invalid.record.errors.full_messages] }, status: :unprocessable_entity unless session.include? :user_id
# #   end

  end

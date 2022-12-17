class ApplicationController < ActionController::Base
        before_action :configure_permitted_parameters, if: :devise_controller?

        include DeviseTokenAuth::Concerns::SetUserByToken
      
        skip_before_action :verify_authenticity_token
        helper_method :current_user, :user_signed_in?
        
        def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname])
        end
end

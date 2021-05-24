class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
      if current_user.has_role?(:admin)
        users_path
      elsif current_user.has_role?(:employee_marketing)
        products_path
      end
    end

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end

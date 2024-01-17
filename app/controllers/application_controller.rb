class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    before_action :set_current_user

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password,:username])
    end
    
    private

    def set_current_user
    @current_user = current_user
    end 
  end




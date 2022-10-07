class ApplicationController < ActionController::Base

#before_action :authenticate_user!, except: [:top]
before_action :configure_permitted_parameters, if: :devise_controller?
   
   def after_sign_out_path_for(resource)
     root_path
   end
   
   def public_customer_path(current_customer)
   end
   
   protected
   
   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
   end

end

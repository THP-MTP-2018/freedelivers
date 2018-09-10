class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def after_sign_in_path_for(resource)
           request.env['omniauth.origin'] || stored_location_for(resource) || profil_path
         end

         def after_update_path_for(resource)
           request.env['omniauth.origin'] || stored_location_for(resource) || profil_path
         end

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:last_name,:first_name,:adress,:zip_code,:city,:email,:phone,:mobile_phone, :password)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:last_name,:first_name,:adress,:zip_code,:city,:email,:phone,:mobile_phone, :password, :current_password)}
          end
end

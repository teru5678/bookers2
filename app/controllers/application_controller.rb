class ApplicationController < ActionController::Base
 before_action :authenticate_user!, except: [:top,:about]
 before_action :configure_permitted_parameters, if: :devise_controller?

   def after_sign_in_path_for(resource)
     user_path(resource.id)
   end

  def after_sign_out_path_for(resource)
        flash[:notice] = "Signed out successfully."
     root_path
  end

  protected

  def configure_permitted_parameters
      added_attrs = [:name,:email,:password,:password_confirmation,:remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:practice_name])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:practice_name])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:first_name])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:practice_name])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:last_father])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:birthdate])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:gender])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:birthdate])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:phone_mobile])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:phone_home])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:street_address_work])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:zip_work])
    devise_parameter_sanitizer.permit(:account_update, :keys => [:city_work])

  end

end

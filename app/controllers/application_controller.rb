# frozen_string_literal: true

# ApplicationController is a class that inherits from ActionController::Base.
class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %i[home]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[invite_code])
  end

  def after_sign_in_path_for(resource)
    user_path(resource)
  end
end

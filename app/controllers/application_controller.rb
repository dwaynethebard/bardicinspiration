class ApplicationController < ActionController::Base
    include Pagy::Backend
    before_action :set_constants
 

  def set_constants
      @flag = true
      @types=Type.all
  end

  def configure_permitted_parameters
    added_attrs = [:username,:first_name , :last_name, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end

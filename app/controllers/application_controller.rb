class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # For Devise
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end


  # Controller Utilities
  def set_user!
    if params[:id]
      @user = User.find(params[:id])
    elsif params[:user_id]
      @user = User.find(params[:user_id])
    end
  end
  
end

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?# Prevent CSRF attacks by raising an exception.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
  	 devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password)}
  	 devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name) }
  	 devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :name ) }
  end

  def after_sign_up_path_for(resource)
     root_path
  end

  def after_sign_in_path_for(resource)
     root_path
  end

  def after_sign_out_path_for(resource_or_scope)
      root_path
  end

  



end

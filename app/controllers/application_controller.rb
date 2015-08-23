class ApplicationController < ActionController::Base

  include PublicActivity::StoreController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:project) << :user_id
    devise_parameter_sanitizer.for(:sign_up) << :name

  end

  def after_sign_in_path_for(resource)
    if current_user.profile
      root_path
    else
    new_profile_path
    end
  end

end

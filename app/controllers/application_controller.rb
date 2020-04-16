class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def admin_user
    redirect_to root_path unless admin_signed_in? && current_admin.administrator?
  end

  def all_tags
    @tags = ActsAsTaggableOn::Tag.all
  end
  
end

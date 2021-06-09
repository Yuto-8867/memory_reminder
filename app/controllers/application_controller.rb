class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインに成功しました"
      posts_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email,:login_name,:nickname,:favorite_food,:hobby,:favorite_time,:is_valid,:profile_image_url])
  end
end

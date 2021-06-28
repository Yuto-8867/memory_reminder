class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!,except: [:top, :about]
  before_action :set_host
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後の遷移

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインに成功しました"
      posts_path
    end
  end

  protected

  # ログインの際の記述

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :login_name, :nickname, :favorite_food, :hobby, :favorite_time, :is_valid, :profile_image_url])
  end

  def set_host
    Rails.application.routes.default_url_options[:host] = request.host_with_port
  end
end

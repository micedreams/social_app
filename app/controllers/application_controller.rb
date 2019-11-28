class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :create_user

  private

  def current_user
    @current_user = User.where(id: cookies[:user_id]).last
  end

  def create_user
    redirect_to "/" unless current_user.present?
  end
end

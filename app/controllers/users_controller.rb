class UsersController < ApplicationController
  skip_before_action :create_user, only: [:new, :create]

  def new
    redirect_to "/posts" if current_user.present?
  end

  def create
    cookies[:user_id] = User.create(name: params[:name]).id unless current_user.present?

    redirect_to "/posts"
  end
end

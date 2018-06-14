class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def apply
  end

  def update
  @current_user = User.find(params[:id])
  @current_user.update_attribute("cook_status", 1)
  redirect_to dashboard_index_path
end
end

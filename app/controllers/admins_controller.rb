class AdminsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def index
    redirect_to users_path
  end

  protected

  def authenticate_admin!
    redirect_to root_path unless current_user.admin?
  end
end

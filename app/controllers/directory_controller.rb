class DirectoryController < ApplicationController
  before_action do
    authenticate_user!
  end

  def index
    if params[:query].present?
      @users = User.search(params[:query])
    else
      @users = User.all
    end
  end

  def show
  end

  def autocomplete
    render json: User.search(params[:query], autocomplete: true, limit: 10).map(&:full_name)
  end
end

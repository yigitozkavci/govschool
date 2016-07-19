class DirectoryController < ApplicationController
  before_filter do
    authenticate_user!
  end

  def index
    @users = User.all
  end

  def show
  end
end

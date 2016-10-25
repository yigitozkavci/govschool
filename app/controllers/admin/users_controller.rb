class Admin::UsersController < AdminsController
  before_action :authenticate_admin!
  before_action :set_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def edit; end

  def update
    @user.update user_params
    redirect_to users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :title, :phone,
      :address, :city, :state, :zip,
      :year_attended, :email
    )
  end
end

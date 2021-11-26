class FarmerUsers::UsersController < ApplicationController
  before_action :authenticate_farmer_user!

  def show
    @farmer_user = current_farmer_user
    @posts = @farmer_user.posts.all
  end

  def edit
    @farmer_user = current_farmer_user
  end

  def update
    @farmer_user = current_farmer_user
    if @farmer_user.update(farmer_user_params)
      flash[:notice] = '情報を変更しました。'
      redirect_to farmer_users_users_path(current_farmer_user)
    else
      render :edit
    end
  end

   def farmer_user_params
     	params.require(:farmer_user).permit(:name, :email, :profile_image)
   end
end

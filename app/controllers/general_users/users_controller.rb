class GeneralUsers::UsersController < ApplicationController
   before_action :authenticate_general_user!

  def show
    @general_user = current_general_user
  end

  def edit
    @general_user = current_general_user
  end

  def update
    @general_user = current_general_user
    if @general_user.update(general_user_params)
      flash[:notice] = '情報を変更しました。'
      redirect_to general_users_users_path(current_general_user)
    else
      render :edit
    end
  end



   def general_user_params
     	params.require(:general_user).permit(:name, :email, :profile_image)
   end
end

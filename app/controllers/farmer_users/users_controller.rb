class FarmerUsers::UsersController < ApplicationController
  def show
    @user = current_farmer_user
    @posts = @user.posts.all

  end
end

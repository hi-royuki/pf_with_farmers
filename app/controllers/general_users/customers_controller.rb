class GeneralUsers::CustomersController < ApplicationController

  def show
    @farmer_user = FarmerUser.find(params[:id])
    @posts = @farmer_user.posts.all
  end

end

class FarmerUsers::CustomersController < ApplicationController
before_action :authenticate_farmer_user!
  def show
    @farmer_user = FarmerUser.find(params[:id])
    @posts = @farmer_user.posts.all.order(created_at: :desc)
    @events = @farmer_user.events.all.order(created_at: :desc)

  end

end

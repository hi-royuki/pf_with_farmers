class GeneralUsers::CustomersController < ApplicationController

  def show
    @farmer_user = FarmerUser.find(params[:id])
    @posts = @farmer_user.posts.all.order(created_at: :desc)
    @events = @farmer_user.events.all.order(created_at: :desc)
  end

end

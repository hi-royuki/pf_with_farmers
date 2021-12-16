class FarmerUsers::UsersController < ApplicationController
  before_action :authenticate_farmer_user!

  def show
    @farmer_user = current_farmer_user
    @posts = @farmer_user.posts.all.order(created_at: :desc)
    @events = @farmer_user.events.all.order(created_at: :desc)
    @joins = @farmer_user.joins.all.order(created_at: :desc)
    @join_lists = Join.all
    @event_lists = @farmer_user.events.all

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

  # 退会ページ
  def unsubscribe
     @farmer_user = current_farmer_user
  end

  def withdraw
    @farmer_user = current_farmer_user
    @farmer_user.update(is_active: false)# //is_deletedをtrueへ

    reset_session # ログアウトさせる
    flash[:notice] = "ありがとうございました。又のご利用を心よりお待ちしております。"
    redirect_to root_path
  end

   def farmer_user_params
     	params.require(:farmer_user).permit(:name, :email, :profile_image)
   end
end

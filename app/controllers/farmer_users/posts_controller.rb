class FarmerUsers::PostsController < ApplicationController
  before_action :authenticate_farmer_user!
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.farmer_user_id = current_farmer_user.id
    @post.save
      redirect_to farmer_users_posts_path
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to farmer_users_posts_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :image, :introduction)
  end
end
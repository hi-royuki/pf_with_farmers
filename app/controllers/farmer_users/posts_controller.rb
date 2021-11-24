class FarmerUsers::PostsController < ApplicationController
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
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :image, :introduction)
  end
end

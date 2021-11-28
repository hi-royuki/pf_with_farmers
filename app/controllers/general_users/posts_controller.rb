class GeneralUsers::PostsController < ApplicationController
  before_action :authenticate_general_user!
  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

end

# class BooksController < ApplicationController
#   def new
#     @book = Book.new
#   end

#   def create
#     @book = Book.new(book_params)
#     @book.farmer_user_id = current_farmer_user.id
#     if @book.save
#       redirect_to books_path
#     else
#       render :new
#     end
#   end

#   def index
#     @book = Book.all
#   end

#   def show
#     @book = Book.find(params[:id])
#     # @post_comments = @post.comments
#     # コメントのインスタンス変数記述
#     @comment = Comment.new
#   end

#   def destroy
#     @book = Book.find(params[:id])
#     @book.destroy
#     redirect_to books_path
#   end


#   private
#   def post_params
#     params.require(:book).permit(:title, :image, :introduction)
#   end
# end

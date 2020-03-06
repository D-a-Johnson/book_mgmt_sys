class UserBooksController < ApplicationController
  def new
    @user_book = User_Book.new
  end

  def create
    @user_book = User_Book.new(user_book_params)
    @user_book.user = current_user
    @user_book.book = Book.find(params[:book_id])
  end

  def find_book
    @book = Book.find(params[:id])
  end

  def destroy
    @userbook = User_Book.find(params[:id])
    @userbook.destroy
  end

  private

  def book_params
    params.require(:user_book).permit()
  end
end

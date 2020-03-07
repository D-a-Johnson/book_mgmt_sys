class UserBooksController < ApplicationController
  before_action :find_user_book, only: [:edit, :update, :destroy]
  def new
    @user_book = UserBook.new
  end

  def create
    @user_book = UserBook.new(user_book_params)
    @user_book.user = current_user
    book = Book.find(params[:book_id])
    @user_book.book = book
    book.checked_books = book.checked_books + 1
  end

  def destroy
    @user_book = UserBook.find(params[:id])
    @user.balance = @user.balance - @user_book.cost_day * (Date.today - @user_book.checkout_date).to_i
    @user_book.destroy
  end

  private

  def find_user_book
    @user_book = UserBook.find(params[:id])
  end

  def book_params
    params.require(:user_book).permit(:user_id, :book_id, :checkout_date)
  end
end

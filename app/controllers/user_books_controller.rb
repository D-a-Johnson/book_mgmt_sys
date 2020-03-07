class UserBooksController < ApplicationController
  before_action :find_user_book, only: [:edit, :update, :destroy]
  def new
    @user_book = User_Book.new
  end

  def create
    @user_book = User_Book.new(user_book_params)
    @user_book.user = current_user
    @user_book.book = Book.find(params[:book_id])
  end

  def destroy
    @userbook = User_Book.find(params[:id])
    @user.balance = @user.balance - @userbook.cost_day * (@userbook.return_date - @userbook.checkout_date)
    @userbook.destroy
  end

  private

  def find_user_book
    @user_book = User_Book.find(params[:id])
  end

  def book_params
    params.require(:user_book).permit(:user_id, :book_id, :checkout_date, :return_date, :return)
  end
end

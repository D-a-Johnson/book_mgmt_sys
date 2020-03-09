class UserBooksController < ApplicationController
  before_action :find_user_book, only: [:edit, :update, :destroy]
  def new
    @user_book = UserBook.new
  end

  def create
    @user_book = UserBook.create(user_book_params)
    @user_book.user = current_user
    @user_book.checkout_date = DateTime.current.to_date
    @user_book.save
  #  book = Book.find(params[:book_id])
  #  @user_book.book = book
   # @user_book.book.total_books = @user_book.book.total_books - 1
    redirect_to root_path
  end

  def destroy
    @user = @user_book.user
    @book = @user_book.book
    @user.balance -= @book.cost_day #* (Date.today - @user_book.checkout_date).to_i
    @user.save
    @book.total_books += 1
    @user_book.destroy
    redirect_to root_path
  end

  private

  def find_user_book
    @user_book = UserBook.find(params[:id])
  end

  def user_book_params
    params.require(:user_book).permit(:book_id, :user_id, :checkout_date)
  end
end

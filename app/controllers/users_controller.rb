class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @user_book = UserBook.new
    authorize @user_book
    @user_book = current_user.user_books
  end
end

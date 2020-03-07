class UsersController < ApplicationController
  def show
    @user = current_user
    @user_book = User_Book.new
    @user_book = current_user.user_books
  end
end

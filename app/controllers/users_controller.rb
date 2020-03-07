class UsersController < ApplicationController
  def show
    @user = current_user
    @user_book = UserBook.new
    @user_book = current_user.user_books
  end
end

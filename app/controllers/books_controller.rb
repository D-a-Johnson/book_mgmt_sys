class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
  end

  def update
    @book.update(book_params)
  end

  def find_book
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :total_books, :checked_books, :cost_day)
  end
end

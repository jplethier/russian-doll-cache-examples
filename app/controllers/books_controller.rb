class BooksController < ApplicationController
  def index
    @books = Book.all.includes(:author, :publisher)
  end

  def show
    @book = Book.find(params[:id])
  end
end

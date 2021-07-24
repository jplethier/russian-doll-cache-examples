class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
    @stats = Rails.cache.fetch(["stats", @author]) do
      { total_books: @author.books.count,
        total_pages_written: @author.books.sum(:num_pages),
        average_rating: @author.books.average(:rating),
        genres_count: @author.books.count("distinct(genre_id)") }
    end
  end
end

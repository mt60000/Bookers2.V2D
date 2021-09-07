class BooksController < ApplicationController

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
  end

  private


    def book_params
      params.require(:book).permit(:title, :body)
    end
end

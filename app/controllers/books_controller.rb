class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if@book.save
    @book.user_id = current_user.id
    redirect_to book_path
    else
    @book = Book.all
    render :index
    end 
  end

  def show
    @book = Book.find(book.params[:id])
  end

  def edit
  end

  def book_params
    params.require(:book).permit(:title,:body)
  end
end

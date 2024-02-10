class BookController < ApplicationController
  def index 
    @books = Book.all
  end

  def show
    @books = Book.find(params[:id])
  end

  def create 
    book = Book.create(book_params)
    redirect_to book_path
  end

  def update
    @books = Book.find(params[:id])
    @books.update(book_params)

    redirect_to book_path(@books)
  end

  def destroy
    @books = Book.find(params[:id])
    @books.destroy

    redirect_to book_path
  end

  private
  def book_params
    params.require(:books).permit(:title)
  end

end

class BooksController < ApplicationController
  
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end
  
  def index
    @book = Book.new
  end
  
  def show
  end
  
  def edit
  end
  
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body, :profile_imaage)
  end 
  
end

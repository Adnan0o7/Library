class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

	def index
    @profile = Profile.find_by_user_id(current_user.id)
    @user = User.find(current_user.id)
    @books = Book.all
  end

  def new
    @profile = Profile.find_by_user_id(current_user.id)
    @user = User.find(current_user.id)
    @book = Book.new
  end

  def show
    @profile = Profile.find_by_user_id(current_user.id)
    @user = User.find(current_user.id)
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to(@book)
    else
      render :action => :new
    end
  end

  def edit
    @profile = Profile.find_by_user_id(current_user.id)
    @user = User.find(current_user.id)
  end

  def update
    @book.update(book_params)
    if @book.update(book_params)
      redirect_to(@book)
    else
      render :action => :edit
    end
  end

  def destroy
    @book.destroy
    if @book.destroy
      redirect_to books_path
    else
      render :action => :show
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
      @books = Book.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :rating, :user_id, :isbn, :avatar)
    end

end

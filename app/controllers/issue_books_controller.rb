class IssueBooksController < ApplicationController
  before_action :set_issue_book, only: [:show, :edit, :update, :destroy]

  # GET /issue_books
  # GET /issue_books.json
  def index
    @issue_books = IssueBook.all
  end

  # GET /issue_books/1
  # GET /issue_books/1.json
  def show
  end

  # GET /issue_books/new
  def new
    @issue_book = IssueBook.new
  end

  # GET /issue_books/1/edit
  def edit
  end

  # POST /issue_books
  # POST /issue_books.json
  def create
    @issue_book = IssueBook.new(issue_book_params)

    respond_to do |format|
      if @issue_book.save
        format.html { redirect_to @issue_book, notice: 'Issue book was successfully created.' }
        format.json { render :show, status: :created, location: @issue_book }
      else
        format.html { render :new }
        format.json { render json: @issue_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue_books/1
  # PATCH/PUT /issue_books/1.json
  def update
    respond_to do |format|
      if @issue_book.update(issue_book_params)
        format.html { redirect_to @issue_book, notice: 'Issue book was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue_book }
      else
        format.html { render :edit }
        format.json { render json: @issue_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_books/1
  # DELETE /issue_books/1.json
  def destroy
    @issue_book.destroy
    respond_to do |format|
      format.html { redirect_to issue_books_url, notice: 'Issue book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_book
      @issue_book = IssueBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_book_params
      params.fetch(:issue_book, {})
    end
end

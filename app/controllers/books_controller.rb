class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  # GET /books
  def index
    @books = Book.joins('LEFT OUTER JOIN reviews ON reviews.book_id = books.id')
                 .select(Book.arel_table[Arel.star],
                         Review.arel_table[Arel.star].count
                           .as('reviews_count'))
                 .group(:id)
  end

  # GET /books/1
  def show; end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit; end

  # POST /books
  def create
    @book = Book.new(book_params.merge(user: current_user))

    if @book.save
      redirect_to books_url, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      redirect_to books_url, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def book_params
    params.require(:book).permit(:title, :author, :isbn)
  end
end

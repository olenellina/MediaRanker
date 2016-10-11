class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id].to_i)
  end

  def new
    @newbook = Book.new
  end

  def create
    @newbook = Book.new

    @newbook.title = params[:book][:title]
    @newbook.author = params[:book][:author]
    @newbook.description = params[:book][:description]
    @newbook.rank = 0

    @newbook.save

    redirect_to action: 'index'
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.title = params[:book][:title]
    @book.author = params[:book][:author]
    @book.description = params[:book][:description]

    @book.save

    redirect_to action: 'index'
  end

  def destroy
    Book.find(params[:id]).destroy

    redirect_to action: 'index'
  end

  def upvote
  end
end

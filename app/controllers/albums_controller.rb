class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id].to_i)
  end

  def new
    @newalbum = Album.new
  end

  def create
    @newalbum = Album.new

    @newalbum.title = params[:album][:title]
    @newalbum.artist = params[:album][:artist]
    @newalbum.description = params[:album][:description]
    @newalbum.rank = 0

    @newalbum.save

    redirect_to action: 'index'
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])

    @album.title = params[:album][:title]
    @album.artist = params[:album][:artist]
    @album.description = params[:album][:description]

    @album.save

    redirect_to action: 'index'
  end

  def destroy
    Album.find(params[:id]).destroy

    redirect_to action: 'index'
  end

  def upvote
  end
end

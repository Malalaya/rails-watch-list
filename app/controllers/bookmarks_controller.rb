class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmarks_path
  end

  def edit
  end

  def update
    @bookmark.update(bookmark_params)
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
    @bookmark.destroy

    redirect_to bookmarks_path, status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :content)
  end

  def set_bookmark
    id = params[:id]
    @bookmark = Bookmark.find(id)
  end
end

class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all
  end

  def show
  end

  def new
    @list = List.find_by(id: params[:list_id])
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
    redirect_to bookmarks_path
  end

  def destroy
    @bookmark.destroy

    redirect_to bookmarks_path, status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end

  def set_bookmark
    id = params[:id]
    @bookmark = Bookmark.find(id)
  end
end

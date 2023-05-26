class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new]
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list # connect key
    if @bookmark.save
      redirect_to lists_path(@list)
    else
      render :new, status: 422 # show error
    end
  end

  def destroy
    @bookmark.destroy
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end

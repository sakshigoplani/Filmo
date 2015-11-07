class SearchesController < ApplicationController
  def new
    @search = Search.new
    @genres = Movie.uniq.pluck(:genres)
  end
  def create
    @search = Search.create(search_params)
    #redirect_to @search
  end
  def show
    @search = Search.find(params[:id])
  end
  private
  def search_params
    params.require(:search).permit(:keywords, :genres, :min_price, :max_price, :imdb_above)
  end
end

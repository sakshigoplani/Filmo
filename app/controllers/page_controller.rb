class PageController < ApplicationController

  def Home
  end

  def About
  end

  def Suggest_A_Movie
  end

  def Shop
  end

def Browse
  @flag = 1
  @movies = Movie.all
  #@movies = Movie.paginate(:page => params[:page], :per_page => 10)

   if params[:search]
  if(Movie.search(params[:search]).blank?)
    @flag = 0
          @movies = Movie.all
    #@movies = @movies.paginate(:page => params[:page], :per_page => 10)
  else
    @flag = 1
    @movies = Movie.search(params[:search])#.order("created_at DESC")
    #@movies = @movies.paginate(:page => params[:page], :per_page => 10)
  # elsif(Movie.search(params[:search]).blank?)
#	@movies = Movie.all
  #puts "Hii"
       end
   else
    #@movies = Movie.all
  end
end

end

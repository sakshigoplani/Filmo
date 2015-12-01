module MoviesHelper
   def cache_key_for_movie(movie)
    "movie-index-#{movie.id}-#{movie.updated_at}"
   end
end

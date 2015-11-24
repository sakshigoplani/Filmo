module MoviesHelper


def cache_key_for_movie_table
 "movie-table-#{Movie.maximum(:updated_at)}"
end

def cache_key_for_movie_row(movie)
 "movie-#{movie.id}-#{movie.updated_at}"
end



end

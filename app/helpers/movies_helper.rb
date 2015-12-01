module MoviesHelper

def cache_key_for_movie_row(movie)
 "movies-movie-#{movie.id}-#{movie.updated_at}"
end

def cache_key_for_movie_table
 max_updated_at = @movies.max_by(&:updated_at).updated_at.try(:utc).try(:to_s, :number)
 "movie-table-#{Movie.maximum(:updated_at)}"
end

end

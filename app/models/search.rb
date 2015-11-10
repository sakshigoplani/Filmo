class Search < ActiveRecord::Base
  def search_movies
    movies= Movie.all
    movies= movies.where(["title LIKE ?","%#{keywords}%"]) if keywords.present?
    movies= movies.where(["genres LIKE ?" , genres]) if genres.present?
    movies= movies.where(["price >= ?",min_price]) if min_price.present?
    movies= movies.where(["price <= ?",max_price]) if max_price.present?
    movies= movies.where(["imdb_rating >= ?",imdb_above]) if imdb_above.present?
  return movies
end
end

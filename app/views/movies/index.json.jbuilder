json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :poster_url, :genres, :year, :imdb_rating, :length, :studio, :price
  json.url movie_url(movie, format: :json)
end

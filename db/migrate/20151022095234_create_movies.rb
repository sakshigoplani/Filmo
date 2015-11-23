class CreateMovies < ActiveRecord::Migration
  def change
    #add_index :movies, :title
    create_table :movies do |t|
      t.string :title
      t.string :poster_url
      t.string :genres
      t.decimal :year
      t.decimal :imdb_rating
      t.decimal :length
      t.string :studio
      t.decimal :price
      t.timestamps null: false
    end
  end
end

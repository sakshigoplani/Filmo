class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :genres
      t.decimal :min_price
      t.decimal :max_price
      t.decimal :imdb_above

      t.timestamps null: false
    end
  end
end

class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.string :name, null: false
      t.integer :TMDB_ID, null: false
      t.string :overview, null: false
      t.string :poster_path
      t.integer :vote_average
      t.integer :vote_count
      t.integer :genres, array: true
      t.string :first_air_date

      t.timestamps
    end
  end
end

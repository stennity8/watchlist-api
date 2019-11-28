class CreateWatchlist < ActiveRecord::Migration[6.0]
  def change
    create_table :watchlists do |t|
      t.boolean :show_watched, default: false
      t.references :user, null: false, foreign_key: true
      t.references :tv_show, null: false, foreign_key: true
    end
  end
end

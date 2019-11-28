class CreateJoinTableUserTvShow < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :tv_shows do |t|
      # t.index [:user_id, :tv_show_id]
      # t.index [:tv_show_id, :user_id]
    end
  end
end

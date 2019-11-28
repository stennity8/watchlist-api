# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_28_002454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tv_shows", force: :cascade do |t|
    t.string "name", null: false
    t.integer "TMDB_ID", null: false
    t.string "overview", null: false
    t.string "poster_path"
    t.integer "vote_average"
    t.integer "vote_count"
    t.integer "genres", array: true
    t.string "first_air_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watchlists", force: :cascade do |t|
    t.boolean "show_watched", default: false
    t.bigint "user_id", null: false
    t.bigint "tv_show_id", null: false
    t.index ["tv_show_id"], name: "index_watchlists_on_tv_show_id"
    t.index ["user_id"], name: "index_watchlists_on_user_id"
  end

  add_foreign_key "watchlists", "tv_shows"
  add_foreign_key "watchlists", "users"
end

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_05_17_225916) do
  create_table "game_sessions", force: :cascade do |t|
    t.integer "game_id"
    t.integer "player_id"
    t.boolean "active", default: false, null: false
    t.string "entry_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id", "player_id"], name: "index_game_sessions_on_game_id_and_player_id"
    t.index ["game_id"], name: "index_game_sessions_on_game_id"
    t.index ["player_id"], name: "index_game_sessions_on_player_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end

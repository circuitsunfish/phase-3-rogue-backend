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

ActiveRecord::Schema[7.0].define(version: 2022_11_02_155823) do
  create_table "entities", force: :cascade do |t|
    t.string "custom_emoji"
    t.integer "game_level_id"
    t.integer "position_x"
    t.integer "position_y"
    t.integer "attack_stat"
    t.integer "speed_stat"
    t.integer "hp_stat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entity_have_types", force: :cascade do |t|
    t.integer "entity_id"
    t.integer "entity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entity_types", force: :cascade do |t|
    t.string "entity_type_name"
    t.string "default_emoji"
    t.integer "can_move"
    t.integer "can_attack"
    t.integer "is_player"
    t.integer "dead_player"
    t.integer "ends_level"
    t.integer "default_attack"
    t.integer "default_speed"
    t.integer "default_hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_levels", force: :cascade do |t|
    t.string "level_name"
    t.string "map_data"
    t.integer "game_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_sessions", force: :cascade do |t|
    t.string "session_player_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

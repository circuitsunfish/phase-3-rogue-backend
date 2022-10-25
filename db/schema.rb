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

ActiveRecord::Schema.define(version: 2022_10_25_011207) do

  create_table "entities", force: :cascade do |t|
    t.integer "game_level_id"
    t.text "position"
    t.text "custom_emoji"
    t.integer "attack_stat"
    t.integer "speed_stat"
    t.integer "hp_stat"
  end

  create_table "entities_have_types", force: :cascade do |t|
    t.integer "entity_id"
    t.integer "entity_type_id"
  end

  create_table "entity_types", force: :cascade do |t|
    t.string "entity_type_name"
    t.integer "can_move"
    t.integer "can_attack"
    t.integer "is_player"
    t.integer "dead_player"
    t.integer "ends_level"
    t.text "default_emoji"
    t.integer "default_attack"
    t.integer "default_speed"
    t.integer "default_hp"
  end

  create_table "game_levels", force: :cascade do |t|
    t.text "level_name"
    t.integer "game_session_id"
    t.text "map_data"
  end

  create_table "game_sessions", force: :cascade do |t|
    t.text "session_name"
  end

end

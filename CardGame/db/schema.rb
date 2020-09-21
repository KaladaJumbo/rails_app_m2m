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

ActiveRecord::Schema.define(version: 2020_09_21_193743) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.string "element_type"
    t.string "card_type"
    t.string "set_name"
    t.string "description"
    t.integer "power"
    t.integer "toughness"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ability"
  end

  create_table "deck_cards", force: :cascade do |t|
    t.integer "card_id"
    t.integer "deck_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.integer "card_count"
    t.string "style"
    t.string "decktype"
    t.boolean "legal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "playstyle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

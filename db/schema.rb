# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_24_215230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.string "idle_image"
    t.string "moving_left_image"
    t.string "moving_right_image"
    t.string "hit_image"
    t.string "death_image"
    t.integer "height"
    t.integer "width"
    t.integer "health", default: 100
    t.integer "damage", default: 25
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "kills"
    t.integer "cookies_fired"
    t.integer "cookies_hit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "villains", force: :cascade do |t|
    t.string "name"
    t.string "idle_image"
    t.string "moving_left_image"
    t.string "moving_right_image"
    t.string "hit_image"
    t.string "death_image"
    t.integer "height"
    t.integer "width"
    t.integer "health", default: 100
    t.integer "damage", default: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "scores", "users"
end

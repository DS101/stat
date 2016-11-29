# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161129053802) do

  create_table "events", force: :cascade do |t|
    t.integer  "game_id"
    t.string   "kind"
    t.string   "logo"
    t.integer  "time"
    t.string   "score"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["game_id"], name: "index_events_on_game_id"

  create_table "games", force: :cascade do |t|
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "home_team_goal"
    t.integer  "away_team_goal"
    t.date     "date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "title"
  end

  add_index "games", ["away_team_id"], name: "index_games_on_away_team_id"
  add_index "games", ["home_team_id"], name: "index_games_on_home_team_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "statistics", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.integer  "shot"
    t.integer  "on_target"
    t.integer  "game_time"
    t.integer  "assist"
    t.integer  "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "goal"
  end

  add_index "statistics", ["game_id"], name: "index_statistics_on_game_id"
  add_index "statistics", ["player_id"], name: "index_statistics_on_player_id"

  create_table "teams", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

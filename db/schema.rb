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

ActiveRecord::Schema.define(version: 20151108170751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "artist_name"
    t.string   "artist_bio"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists_genres", id: false, force: :cascade do |t|
    t.integer "genre_id"
    t.integer "artist_id"
  end

  add_index "artists_genres", ["artist_id"], name: "index_artists_genres_on_artist_id", using: :btree
  add_index "artists_genres", ["genre_id"], name: "index_artists_genres_on_genre_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "genre_name"
    t.string   "genre_description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_url"
  end

  add_index "genres", ["user_id"], name: "index_genres_on_user_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string  "song_name"
    t.string  "song_comment"
    t.string  "scloud_embed"
    t.integer "genre_id"
    t.integer "artist_id"
    t.integer "user_id"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["genre_id"], name: "index_songs_on_genre_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

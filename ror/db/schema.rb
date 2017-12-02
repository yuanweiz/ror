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

ActiveRecord::Schema.define(version: 20171128033812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album", primary_key: "albumid", force: :cascade do |t|
    t.string   "atitle"
    t.datetime "adate"
  end

  create_table "albumtrack", primary_key: ["albumid", "tid"], force: :cascade do |t|
    t.integer "albumid", null: false
    t.integer "tid",     null: false
  end

  create_table "artist", primary_key: "aid", force: :cascade do |t|
    t.string "aname"
  end

  create_table "follow", primary_key: ["follower", "followee"], force: :cascade do |t|
    t.integer  "follower", null: false
    t.integer  "followee", null: false
    t.datetime "ts"
  end

  create_table "like", primary_key: ["uid", "aid"], force: :cascade do |t|
    t.integer  "uid", null: false
    t.integer  "aid", null: false
    t.datetime "ts"
  end

  create_table "play", force: :cascade do |t|
    t.integer  "uid"
    t.integer  "tid"
    t.datetime "ts"
  end

  create_table "playlist", primary_key: "lid", force: :cascade do |t|
    t.string   "ltitle"
    t.datetime "ldate"
    t.boolean  "lpublic"
    t.integer  "uid"
  end

  create_table "playlisttrack", primary_key: ["lid", "tid"], force: :cascade do |t|
    t.integer "lid", null: false
    t.integer "tid", null: false
  end

  create_table "rate", primary_key: ["uid", "tid"], force: :cascade do |t|
    t.integer  "uid",   null: false
    t.integer  "tid",   null: false
    t.float    "score"
    t.datetime "ts"
  end

  create_table "track", primary_key: "tid", force: :cascade do |t|
    t.string  "ttitle"
    t.string  "tgenre"
    t.integer "aid"
  end

  create_table "user", primary_key: "uid", force: :cascade do |t|
    t.string "uname"
    t.string "ulogin"
    t.string "upassword"
    t.string "uemail"
    t.string "ucity"
  end

  add_foreign_key "albumtrack", "album", column: "albumid", primary_key: "albumid"
  add_foreign_key "albumtrack", "track", column: "tid", primary_key: "tid"
  add_foreign_key "follow", "\"user\"", column: "followee", primary_key: "uid"
  add_foreign_key "follow", "\"user\"", column: "follower", primary_key: "uid"
  add_foreign_key "like", "\"user\"", column: "uid", primary_key: "uid"
  add_foreign_key "like", "artist", column: "aid", primary_key: "aid"
  add_foreign_key "play", "\"user\"", column: "uid", primary_key: "uid"
  add_foreign_key "play", "track", column: "tid", primary_key: "tid"
  add_foreign_key "playlist", "\"user\"", column: "uid", primary_key: "uid"
  add_foreign_key "playlisttrack", "playlist", column: "lid", primary_key: "lid"
  add_foreign_key "playlisttrack", "track", column: "tid", primary_key: "tid"
  add_foreign_key "track", "artist", column: "aid", primary_key: "aid"
end

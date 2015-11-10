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

ActiveRecord::Schema.define(version: 20151110113614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_comments", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "art_id"
  end

  add_index "art_comments", ["art_id"], name: "index_art_comments_on_art_id", using: :btree
  add_index "art_comments", ["user_id"], name: "index_art_comments_on_user_id", using: :btree

  create_table "arts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "production_date"
    t.string   "author"
    t.string   "style"
    t.string   "image"
    t.string   "owner"
    t.string   "location"
    t.integer  "rating"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "category_id"
  end

  add_index "arts", ["category_id"], name: "index_arts_on_category_id", using: :btree
  add_index "arts", ["user_id"], name: "index_arts_on_user_id", using: :btree

  create_table "author_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "author_comments", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "author_id"
  end

  add_index "author_comments", ["author_id"], name: "index_author_comments_on_author_id", using: :btree
  add_index "author_comments", ["user_id"], name: "index_author_comments_on_user_id", using: :btree

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating"
    t.date     "birth_date"
    t.date     "die_date"
    t.string   "hometown"
    t.string   "photo"
    t.text     "biography"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.integer  "author_category_id"
  end

  add_index "authors", ["author_category_id"], name: "index_authors_on_author_category_id", using: :btree
  add_index "authors", ["user_id"], name: "index_authors_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "museums", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "address"
    t.date     "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nick"
    t.string   "thumbnail"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "art_comments", "arts"
  add_foreign_key "art_comments", "users"
  add_foreign_key "arts", "categories"
  add_foreign_key "arts", "users"
  add_foreign_key "author_comments", "authors"
  add_foreign_key "author_comments", "users"
  add_foreign_key "authors", "author_categories"
  add_foreign_key "authors", "users"
end

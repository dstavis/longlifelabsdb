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

ActiveRecord::Schema.define(version: 20160921105716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "papers", force: :cascade do |t|
    t.integer  "pmid"
    t.text     "url"
    t.string   "title"
    t.string   "authors"
    t.string   "journal"
    t.text     "abstract"
    t.text     "commentary"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "noteworthy_quotes"
  end

  create_table "papers_tags", id: false, force: :cascade do |t|
    t.integer "paper_id"
    t.integer "tag_id"
  end

  add_index "papers_tags", ["paper_id"], name: "index_papers_tags_on_paper_id", using: :btree
  add_index "papers_tags", ["tag_id"], name: "index_papers_tags_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

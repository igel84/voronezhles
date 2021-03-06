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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120223194519) do

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "house_prices", :force => true do |t|
    t.integer  "size",       :default => 0
    t.float    "count",      :default => 0.0
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "name"
    t.boolean  "main",               :default => false
    t.integer  "project_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "hiperlink"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "visible",    :default => true
    t.string   "head",       :default => "Воронеж лес:деревянные дома из оцилиндрованное бревно, пиломатериал"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "info",       :default => ""
    t.text     "body",       :default => ""
    t.integer  "price",      :default => 0
    t.integer  "area",       :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", :force => true do |t|
    t.string   "name"
    t.text     "info"
    t.string   "real_file_name"
    t.string   "real_content_type"
    t.integer  "real_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

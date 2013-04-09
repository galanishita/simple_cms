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

ActiveRecord::Schema.define(:version => 20130328055717) do

  create_table "admin_users", :force => true do |t|
    t.string   "first_name",      :limit => 20
    t.string   "last_name",       :limit => 50
    t.string   "username",        :limit => 25
    t.string   "email",           :limit => 100, :default => "", :null => false
    t.string   "hashed_password", :limit => 40
    t.string   "salt",            :limit => 40
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "admin_users_pages", :id => false, :force => true do |t|
    t.integer "admin_user_id"
    t.integer "page_id"
  end

  add_index "admin_users_pages", ["admin_user_id", "page_id"], :name => "index_admin_users_pages_on_admin_user_id_and_page_id"

  create_table "attachments", :force => true do |t|
    t.string   "file_path"
    t.string   "file_location"
    t.string   "file_extension"
    t.string   "file_type"
    t.integer  "file_size"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "authors", :force => true do |t|
    t.string   "author_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "imageable_id"
    t.string   "imageable_type"
  end

  create_table "pages", :force => true do |t|
    t.integer  "subject_id"
    t.text     "name"
    t.string   "permalink"
    t.integer  "position"
    t.boolean  "visible",        :default => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "sub_subject_id"
    t.string   "backimg_url"
    t.string   "backimg_color"
    t.string   "headimg_url"
    t.string   "popular_name"
    t.string   "intro"
  end

  add_index "pages", ["permalink"], :name => "index_pages_on_permalink"
  add_index "pages", ["sub_subject_id"], :name => "index_pages_on_sub_subject_id"
  add_index "pages", ["subject_id"], :name => "index_pages_on_subject_id"

  create_table "quoteimages", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "quoteimageable_id"
    t.string   "quoteimageable_type"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "quotes", :force => true do |t|
    t.integer  "topic_id"
    t.integer  "author_id"
    t.string   "language"
    t.text     "title"
    t.text     "quote"
    t.datetime "publish_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "info"
  end

  create_table "sections", :force => true do |t|
    t.integer  "page_id"
    t.text     "name"
    t.integer  "position"
    t.boolean  "visible",     :default => false
    t.string   "contenttype"
    t.text     "content"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "sections", ["page_id"], :name => "index_sections_on_page_id"

  create_table "sub_subjects", :force => true do |t|
    t.integer  "subject_id"
    t.text     "name",       :limit => 255
    t.integer  "position"
    t.boolean  "visible",                   :default => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "sub_subjects", ["subject_id"], :name => "index_sub_subjects_on_subject_id"

  create_table "subjects", :force => true do |t|
    t.text     "name"
    t.integer  "position"
    t.boolean  "visible",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.text     "content"
  end

  create_table "topics", :force => true do |t|
    t.string   "topic_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name", :limit => 2
    t.string   "last_name",  :limit => 50
    t.string   "email",                    :default => "", :null => false
    t.string   "password",   :limit => 40
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

end

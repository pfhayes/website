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

ActiveRecord::Schema.define(:version => 20121110192344) do

  create_table "posts", :force => true do |t|
    t.text     "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "redirect_users", :force => true do |t|
    t.string   "username"
    t.string   "hashed_pw"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "redirects", :force => true do |t|
    t.text     "code"
    t.text     "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "redirects", ["code"], :name => "index_redirects_on_code", :unique => true
  add_index "redirects", ["created_at"], :name => "index_redirects_on_created_at"

end

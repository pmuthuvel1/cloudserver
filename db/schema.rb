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

ActiveRecord::Schema.define(:version => 20120525183541) do

  create_table "logins", :force => true do |t|
    t.string   "username"
    t.string   "pass_word"
    t.string   "name"
    t.string   "usertype"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "master_servers", :force => true do |t|
    t.string   "servername"
    t.string   "serversize"
    t.string   "server_region"
    t.string   "ind_resource"
    t.float    "ind_hour"
    t.string   "org_res"
    t.float    "org_hour"
    t.string   "group_res"
    t.integer  "group_hour"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "server_ins_transactions", :force => true do |t|
    t.integer  "ser_inst_id"
    t.integer  "ownerid"
    t.integer  "masterid"
    t.date     "exec_date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "hours_run"
    t.float    "totalbill"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "server_instances", :force => true do |t|
    t.integer  "ownerid"
    t.integer  "masterid"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "status"
    t.float    "recentbill"
    t.date     "recent_exe_date"
    t.float    "totalbill"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "pass_word"
    t.string   "usertype"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

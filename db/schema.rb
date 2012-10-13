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

ActiveRecord::Schema.define(:version => 20121013065238) do

  create_table "committees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contact_numbers", :force => true do |t|
    t.string   "number"
    t.string   "provider"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "owner_id"
    t.string   "owner_type"
  end

  create_table "participants", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "facilitator_id"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "nickname"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "participants", ["email"], :name => "index_participants_on_email", :unique => true
  add_index "participants", ["reset_password_token"], :name => "index_participants_on_reset_password_token", :unique => true

  create_table "referrers", :force => true do |t|
    t.string   "source"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "talents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "volunteers", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "nickname"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "referrer"
    t.string   "gender"
    t.date     "birthdate"
    t.boolean  "part_of_a_dgroup"
    t.integer  "dgroup_leader_id"
    t.boolean  "leads_a_dgroup",         :default => false
    t.string   "address"
    t.string   "hobby"
    t.string   "most_important_thing"
    t.boolean  "onelife_volunteer",      :default => true
  end

  add_index "volunteers", ["email"], :name => "index_volunteers_on_email", :unique => true
  add_index "volunteers", ["reset_password_token"], :name => "index_volunteers_on_reset_password_token", :unique => true

end

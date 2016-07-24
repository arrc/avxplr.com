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

ActiveRecord::Schema.define(version: 20160724133810) do

  create_table "aircraftenginemanufacturers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "aircraft_id",            null: false
    t.integer "engine_manufacturer_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftenginemanufacturers_on_aircraft_id", using: :btree
    t.index ["engine_manufacturer_id"], name: "index_aircraftenginemanufacturers_on_engine_manufacturer_id", using: :btree
  end

  create_table "aircraftenginemodels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "aircraft_id",     null: false
    t.integer "engine_model_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftenginemodels_on_aircraft_id", using: :btree
    t.index ["engine_model_id"], name: "index_aircraftenginemodels_on_engine_model_id", using: :btree
  end

  create_table "aircraftenginetypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "aircraft_id",    null: false
    t.integer "engine_type_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftenginetypes_on_aircraft_id", using: :btree
    t.index ["engine_type_id"], name: "index_aircraftenginetypes_on_engine_type_id", using: :btree
  end

  create_table "aircraftindustries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "aircraft_id", null: false
    t.integer "industry_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftindustries_on_aircraft_id", using: :btree
    t.index ["industry_id"], name: "index_aircraftindustries_on_industry_id", using: :btree
  end

  create_table "aircraftmanufacturers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "aircraft_id",     null: false
    t.integer "manufacturer_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftmanufacturers_on_aircraft_id", using: :btree
    t.index ["manufacturer_id"], name: "index_aircraftmanufacturers_on_manufacturer_id", using: :btree
  end

  create_table "aircraftroles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "aircraft_id", null: false
    t.integer  "role_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["aircraft_id"], name: "index_aircraftroles_on_aircraft_id", using: :btree
    t.index ["role_id"], name: "index_aircraftroles_on_role_id", using: :btree
  end

  create_table "aircrafts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "model",                           default: "", null: false
    t.text     "description",       limit: 65535
    t.integer  "year"
    t.integer  "maiden_flight"
    t.string   "production_status"
    t.string   "national_origin"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.index ["model"], name: "index_aircrafts_on_model", using: :btree
  end

  create_table "aircrafttypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "aircraft_id", null: false
    t.integer  "type_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["aircraft_id"], name: "index_aircrafttypes_on_aircraft_id", using: :btree
    t.index ["type_id"], name: "index_aircrafttypes_on_type_id", using: :btree
  end

  create_table "engine_manufacturers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "engine_models", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "engine_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "industries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "manufacturers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                      default: "", null: false
    t.text     "description", limit: 65535
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username",               default: "", null: false
    t.string   "bio"
    t.string   "profile_image"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
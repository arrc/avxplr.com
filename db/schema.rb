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

ActiveRecord::Schema.define(version: 20160821071943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aircraftenginemanufacturers", force: :cascade do |t|
    t.integer "aircraft_id",            null: false
    t.integer "engine_manufacturer_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftenginemanufacturers_on_aircraft_id", using: :btree
    t.index ["engine_manufacturer_id"], name: "index_aircraftenginemanufacturers_on_engine_manufacturer_id", using: :btree
  end

  create_table "aircraftenginemodels", force: :cascade do |t|
    t.integer "aircraft_id",     null: false
    t.integer "engine_model_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftenginemodels_on_aircraft_id", using: :btree
    t.index ["engine_model_id"], name: "index_aircraftenginemodels_on_engine_model_id", using: :btree
  end

  create_table "aircraftenginetypes", force: :cascade do |t|
    t.integer "aircraft_id",    null: false
    t.integer "engine_type_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftenginetypes_on_aircraft_id", using: :btree
    t.index ["engine_type_id"], name: "index_aircraftenginetypes_on_engine_type_id", using: :btree
  end

  create_table "aircraftindustries", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.integer "industry_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftindustries_on_aircraft_id", using: :btree
    t.index ["industry_id"], name: "index_aircraftindustries_on_industry_id", using: :btree
  end

  create_table "aircraftmanufacturers", force: :cascade do |t|
    t.integer "aircraft_id",     null: false
    t.integer "manufacturer_id", null: false
    t.index ["aircraft_id"], name: "index_aircraftmanufacturers_on_aircraft_id", using: :btree
    t.index ["manufacturer_id"], name: "index_aircraftmanufacturers_on_manufacturer_id", using: :btree
  end

  create_table "aircraftroles", force: :cascade do |t|
    t.integer  "aircraft_id", null: false
    t.integer  "role_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["aircraft_id"], name: "index_aircraftroles_on_aircraft_id", using: :btree
    t.index ["role_id"], name: "index_aircraftroles_on_role_id", using: :btree
  end

  create_table "aircrafts", force: :cascade do |t|
    t.string   "model",                default: "",   null: false
    t.text     "description"
    t.integer  "year"
    t.integer  "maiden_flight"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "view_count"
    t.boolean  "is_public",            default: true
    t.integer  "production_status_cd"
    t.integer  "national_origin_cd"
    t.integer  "crew"
    t.integer  "passengers"
    t.float    "bootspace"
    t.float    "length"
    t.float    "height"
    t.float    "wing_span"
    t.float    "wing_area"
    t.float    "empty_weight"
    t.float    "gross_weight"
    t.float    "max_takeoff_weight"
    t.float    "max_landing_weight"
    t.float    "max_payload"
    t.float    "full_fuel_payload"
    t.float    "power_output"
    t.float    "thrust"
    t.float    "max_cruise_speed"
    t.float    "stall_speed"
    t.float    "range"
    t.float    "service_ceiling"
    t.float    "max_climb_rate"
    t.float    "max_speed_limit"
    t.float    "takeoff_distance"
    t.float    "takeoff_ground_roll"
    t.float    "landing_distance"
    t.float    "landing_ground_roll"
    t.string   "image_front"
    t.string   "image_back"
    t.string   "image_left"
    t.string   "image_right"
    t.string   "image_top"
    t.string   "image_takeoff"
    t.string   "image_airborne"
    t.string   "image_landing"
    t.integer  "category_id"
    t.index ["category_id"], name: "index_aircrafts_on_category_id", using: :btree
    t.index ["model"], name: "index_aircrafts_on_model", using: :btree
  end

  create_table "aircrafttypes", force: :cascade do |t|
    t.integer  "aircraft_id", null: false
    t.integer  "type_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["aircraft_id"], name: "index_aircrafttypes_on_aircraft_id", using: :btree
    t.index ["type_id"], name: "index_aircrafttypes_on_type_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "engine_manufacturers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "engine_models", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "year"
    t.integer  "engine_manufacturer_id"
    t.index ["engine_manufacturer_id"], name: "index_engine_models_on_engine_manufacturer_id", using: :btree
  end

  create_table "engine_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "favoritable_id"
    t.string   "favoritable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["favoritable_id", "favoritable_type"], name: "index_favorites_on_favoritable_id_and_favoritable_type", unique: true, using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "flags", force: :cascade do |t|
    t.text     "message"
    t.integer  "user_id"
    t.string   "flagable_type"
    t.integer  "flagable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["flagable_type", "flagable_id"], name: "index_flags_on_flagable_type_and_flagable_id", using: :btree
    t.index ["user_id"], name: "index_flags_on_user_id", using: :btree
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.text     "body"
    t.string   "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",        default: "", null: false
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "shot_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shots", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "caption"
    t.integer  "view_count"
    t.integer  "aircraft_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "is_public",        default: true
    t.string   "image"
    t.integer  "shot_type_cd"
    t.text     "video"
    t.string   "source"
    t.integer  "shot_category_id"
    t.index ["aircraft_id"], name: "index_shots_on_aircraft_id", using: :btree
    t.index ["shot_category_id"], name: "index_shots_on_shot_category_id", using: :btree
    t.index ["user_id"], name: "index_shots_on_user_id", using: :btree
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "shot_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shot_id"], name: "index_taggings_on_shot_id", using: :btree
    t.index ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_types_on_category_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "",   null: false
    t.string   "bio"
    t.string   "profile_image"
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.boolean  "is_active",              default: true
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "comments", "users"
  add_foreign_key "engine_models", "engine_manufacturers"
  add_foreign_key "favorites", "users"
  add_foreign_key "flags", "users"
  add_foreign_key "shots", "aircrafts"
  add_foreign_key "shots", "users"
  add_foreign_key "taggings", "shots"
  add_foreign_key "taggings", "tags"
end

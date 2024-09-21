# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_09_21_034108) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctor_profiles", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.string "names"
    t.string "last_names"
    t.bigint "identification_type_id", null: false
    t.integer "identification"
    t.boolean "sex"
    t.date "birthdate"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctor_profiles_on_doctor_id"
    t.index ["identification_type_id"], name: "index_doctor_profiles_on_identification_type_id"
  end

  create_table "doctor_specialties", id: false, force: :cascade do |t|
    t.bigint "specialty_id", null: false
    t.bigint "doctor_profile_id", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "identification_types", force: :cascade do |t|
    t.string "short_name"
    t.string "long_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "names"
    t.string "last_names"
    t.bigint "identification_type_id", null: false
    t.integer "identification"
    t.boolean "sex"
    t.date "birthdate"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identification_type_id"], name: "index_user_profiles_on_identification_type_id"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "doctor_profiles", "doctors"
  add_foreign_key "doctor_profiles", "identification_types"
  add_foreign_key "doctor_specialties", "doctor_profiles"
  add_foreign_key "doctor_specialties", "specialties"
  add_foreign_key "user_profiles", "identification_types"
  add_foreign_key "user_profiles", "users"
end

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

ActiveRecord::Schema[7.0].define(version: 2024_09_21_174454) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.bigint "specialty_id", null: false
    t.bigint "health_center_id", null: false
    t.datetime "date_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["health_center_id"], name: "index_appointments_on_health_center_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["specialty_id"], name: "index_appointments_on_specialty_id"
  end

  create_table "chat_messages", force: :cascade do |t|
    t.bigint "chat_id", null: false
    t.bigint "support_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_chat_messages_on_chat_id"
    t.index ["support_id"], name: "index_chat_messages_on_support_id"
  end

  create_table "chats", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_chats_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "names"
    t.string "last_names"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health_centers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identification_types", force: :cascade do |t|
    t.string "short_name"
    t.string "long_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_profiles", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.string "names"
    t.string "last_names"
    t.bigint "identification_type_id", null: false
    t.integer "identification"
    t.string "address"
    t.string "phone"
    t.boolean "sex"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identification_type_id"], name: "index_patient_profiles_on_identification_type_id"
    t.index ["patient_id"], name: "index_patient_profiles_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supports", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "names"
    t.string "last_names"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_supports_on_email", unique: true
    t.index ["reset_password_token"], name: "index_supports_on_reset_password_token", unique: true
  end

  create_table "tests", force: :cascade do |t|
    t.string "title"
    t.bigint "patient_id", null: false
    t.bigint "doctor_id", null: false
    t.datetime "date_time"
    t.text "results"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_tests_on_doctor_id"
    t.index ["patient_id"], name: "index_tests_on_patient_id"
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "health_centers"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "specialties"
  add_foreign_key "chat_messages", "chats"
  add_foreign_key "chat_messages", "supports"
  add_foreign_key "chats", "patients"
  add_foreign_key "patient_profiles", "identification_types"
  add_foreign_key "patient_profiles", "patients"
  add_foreign_key "tests", "doctors"
  add_foreign_key "tests", "patients"
end

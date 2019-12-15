# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_15_040654) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone1"
    t.string "phone2"
    t.string "email"
    t.string "site"
    t.string "cnpj"
    t.text "about"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "company_id"
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  create_table "jobs_skills", id: false, force: :cascade do |t|
    t.integer "job_id", null: false
    t.integer "skill_id", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.integer "kind", limit: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills_students", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "skill_id", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "address"
    t.string "phone1"
    t.string "phone2"
    t.date "birthday"
    t.text "biograph"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "jobs", "companies"
end

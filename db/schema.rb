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

ActiveRecord::Schema.define(version: 2024_06_12_134637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "auths", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "containerdetails", force: :cascade do |t|
    t.string "truck"
    t.string "containerNumber"
    t.date "loadedDate"
    t.string "destination"
    t.date "expiryDate"
    t.string "customer"
    t.string "droppingPoint"
    t.string "thirdPartyContact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string "truck"
    t.string "containerNumber"
    t.date "loadedDate"
    t.string "destination"
    t.date "expiryDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "customer"
    t.string "droppingPoint"
    t.string "thirdPartyContact"
  end

  create_table "third_parties", force: :cascade do |t|
    t.string "truck"
    t.string "container_number"
    t.date "loaded_date"
    t.string "destination"
    t.string "customer"
    t.string "dropping_point"
    t.string "third_party_contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "initialTruck"
  end

end

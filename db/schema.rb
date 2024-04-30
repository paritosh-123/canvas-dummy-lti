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

ActiveRecord::Schema[7.0].define(version: 2022_07_21_095653) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "panda_pal_api_calls", id: :serial, force: :cascade do |t|
    t.text "logic"
    t.string "expiration"
    t.integer "uses_remaining"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "panda_pal_organizations", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "key"
    t.string "secret"
    t.string "canvas_account_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "salesforce_id"
    t.text "encrypted_settings"
    t.string "encrypted_settings_iv"
    t.index ["key"], name: "index_panda_pal_organizations_on_key", unique: true
    t.index ["name"], name: "index_panda_pal_organizations_on_name", unique: true
  end

  create_table "panda_pal_sessions", id: :serial, force: :cascade do |t|
    t.string "session_key"
    t.text "data"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "panda_pal_organization_id"
    t.index ["panda_pal_organization_id"], name: "index_panda_pal_sessions_on_panda_pal_organization_id"
    t.index ["session_key"], name: "index_panda_pal_sessions_on_session_key", unique: true
  end

end

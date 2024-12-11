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

ActiveRecord::Schema[8.0].define(version: 2024_12_11_103244) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "circuits", force: :cascade do |t|
    t.string "circuit_id", null: false
    t.string "circuit_ref", null: false
    t.string "name", null: false
    t.string "location", null: false
    t.string "country", null: false
    t.decimal "lat", precision: 10, scale: 7, null: false
    t.decimal "lng", precision: 10, scale: 7, null: false
    t.integer "alt"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["circuit_id"], name: "index_circuits_on_circuit_id", unique: true
  end

  create_table "constructor_results", force: :cascade do |t|
    t.integer "constructor_results_id"
    t.integer "race_id"
    t.integer "constructor_id"
    t.decimal "points"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructor_standings", force: :cascade do |t|
    t.integer "constructor_standings_id"
    t.integer "race_id"
    t.integer "constructor_id"
    t.decimal "points"
    t.integer "position"
    t.string "position_text"
    t.integer "wins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructors", force: :cascade do |t|
    t.integer "constructor_id"
    t.string "constructor_ref"
    t.string "name"
    t.string "nationality"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "driver_standings", force: :cascade do |t|
    t.integer "driver_standings_id"
    t.integer "race_id"
    t.integer "driver_id"
    t.decimal "points"
    t.integer "position"
    t.string "position_text"
    t.integer "wins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.integer "driver_id"
    t.string "driver_ref"
    t.integer "number"
    t.string "code"
    t.string "forename"
    t.string "surname"
    t.date "dob"
    t.string "nationality"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lap_times", force: :cascade do |t|
    t.integer "race_id"
    t.integer "driver_id"
    t.integer "lap"
    t.integer "position"
    t.string "time"
    t.integer "milliseconds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pit_stops", force: :cascade do |t|
    t.integer "race_id"
    t.integer "driver_id"
    t.integer "stop"
    t.integer "lap"
    t.string "time"
    t.decimal "duration"
    t.integer "milliseconds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.integer "qualify_id"
    t.integer "race_id"
    t.integer "driver_id"
    t.integer "constructor_id"
    t.integer "number"
    t.integer "position"
    t.string "q1"
    t.string "q2"
    t.string "q3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "race_id", null: false
    t.integer "year"
    t.integer "round"
    t.string "circuit_id"
    t.string "name"
    t.date "date"
    t.time "time"
    t.string "url"
    t.date "fp1_date"
    t.time "fp1_time"
    t.date "fp2_date"
    t.time "fp2_time"
    t.date "fp3_date"
    t.time "fp3_time"
    t.date "quali_date"
    t.time "quali_time"
    t.date "sprint_date"
    t.time "sprint_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_races_on_race_id", unique: true
  end

  create_table "results", force: :cascade do |t|
    t.integer "result_id"
    t.integer "race_id"
    t.integer "driver_id"
    t.integer "constructor_id"
    t.integer "number"
    t.integer "grid"
    t.integer "position"
    t.string "position_text"
    t.integer "position_order"
    t.decimal "points"
    t.integer "laps"
    t.string "time"
    t.integer "milliseconds"
    t.integer "fastest_lap"
    t.integer "rank"
    t.string "fastest_lap_time"
    t.decimal "fastest_lap_speed"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "year"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sprint_results", force: :cascade do |t|
    t.integer "result_id"
    t.integer "race_id"
    t.integer "driver_id"
    t.integer "constructor_id"
    t.integer "number"
    t.integer "grid"
    t.integer "position"
    t.string "position_text"
    t.integer "position_order"
    t.decimal "points"
    t.integer "laps"
    t.string "time"
    t.integer "milliseconds"
    t.integer "fastest_lap"
    t.string "fastest_lap_time"
    t.string "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "status_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end

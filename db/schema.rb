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

ActiveRecord::Schema.define(version: 2020_06_09_175515) do

  create_table "flats", force: :cascade do |t|
    t.string "Adresse"
    t.text "Beschreibung"
    t.decimal "Wasser", precision: 8, scale: 2
    t.decimal "Abwasser", precision: 8, scale: 2
    t.decimal "Kaminkehrer", precision: 8, scale: 2
    t.decimal "Abfallbeseitigung", precision: 8, scale: 2
    t.decimal "Grundsteuer", precision: 8, scale: 2
    t.decimal "Heizungswartung", precision: 8, scale: 2
    t.decimal "Versicherung", precision: 8, scale: 2
    t.decimal "Vorauszahlung", precision: 8, scale: 2
    t.decimal "Restzahlung", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

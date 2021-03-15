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

ActiveRecord::Schema.define(version: 2021_03_15_140134) do

  create_table "answers", force: :cascade do |t|
    t.string "q1", null: false
    t.string "q2", null: false
    t.string "q3", null: false
    t.string "q4", null: false
    t.string "q5", null: false
    t.string "q6", null: false
    t.string "q7", null: false
    t.string "q8", null: false
    t.string "q9", null: false
    t.string "q10", null: false
    t.string "q11", null: false
    t.string "q12", null: false
    t.string "q13", null: false
    t.string "q14", null: false
    t.string "q15", null: false
    t.string "q16", null: false
    t.string "q17", null: false
    t.string "q18", null: false
    t.string "q19", null: false
    t.string "q20", null: false
    t.string "q21", null: false
    t.string "q22", null: false
    t.string "q23", null: false
    t.string "q24", null: false
    t.string "q25", null: false
    t.string "q26", null: false
    t.string "q27", null: false
    t.string "q28", null: false
    t.string "q29", null: false
    t.string "q30", null: false
    t.string "q31", null: false
    t.string "q32", null: false
    t.string "q33", null: false
    t.string "q34", null: false
    t.string "q35", null: false
    t.string "q36", null: false
    t.string "q37", null: false
    t.string "q38", null: false
    t.string "q39", null: false
    t.string "q40", null: false
    t.string "q41", null: false
    t.string "q42", null: false
    t.string "q43", null: false
    t.string "q44", null: false
    t.string "q45", null: false
    t.string "q46", null: false
    t.string "q47", null: false
    t.string "q48", null: false
    t.string "q49", null: false
    t.string "q50", null: false
    t.string "q51", null: false
    t.string "q52", null: false
    t.string "q53", null: false
    t.string "q54", null: false
    t.string "q55", null: false
    t.string "q56", null: false
    t.string "q57", null: false
    t.string "q58", null: false
    t.string "q59", null: false
    t.string "q60", null: false
    t.string "q61", null: false
    t.string "q62", null: false
    t.string "q63", null: false
    t.string "q64", null: false
    t.string "q65", null: false
    t.string "q66", null: false
    t.string "q67", null: false
    t.string "q68", null: false
    t.string "q69", null: false
    t.string "q70", null: false
    t.string "q71", null: false
    t.string "q72", null: false
    t.string "q73", null: false
    t.string "q74", null: false
    t.string "q75", null: false
    t.string "q76", null: false
    t.string "q77", null: false
    t.string "q78", null: false
    t.string "q79", null: false
    t.string "q80", null: false
    t.string "q81", null: false
    t.string "q82", null: false
    t.string "q83", null: false
    t.string "q84", null: false
    t.string "q85", null: false
    t.string "q86", null: false
    t.string "q87", null: false
    t.string "q88", null: false
    t.string "q89", null: false
    t.string "q90", null: false
    t.string "q91", null: false
    t.string "q92", null: false
    t.string "q93", null: false
    t.string "q94", null: false
    t.string "q95", null: false
    t.string "q96", null: false
    t.string "q97", null: false
    t.string "q98", null: false
    t.string "q99", null: false
    t.string "q100", null: false
    t.string "q101", null: false
    t.string "q102", null: false
    t.string "q103", null: false
    t.string "name", null: false
    t.integer "sex", default: 1, null: false
    t.integer "age", null: false
    t.string "job", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

end

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

ActiveRecord::Schema.define(version: 2018_06_26_152847) do

  create_table "jls", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "ques"
    t.text "ans"
    t.integer "point"
    t.text "input"
    t.text "output"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "heading"
  end

  create_table "jps", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "ques"
    t.text "ans"
    t.integer "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "input"
    t.text "output"
  end

  create_table "models", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "series"
    t.text "name"
    t.decimal "battery", precision: 10
    t.decimal "wire", precision: 10
    t.decimal "misc", precision: 10
    t.decimal "avail", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rbs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "mb"
    t.text "ms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repairs", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.decimal "cust", precision: 10
    t.decimal "model", precision: 10
    t.decimal "val", precision: 10
    t.timestamp "due"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "name"
    t.decimal "avail", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tras", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.decimal "repair", precision: 10
    t.timestamp "got"
    t.timestamp "sol"
    t.timestamp "send"
    t.timestamp "rec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

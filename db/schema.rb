# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_230_518_123_556) do
  create_table 'cellars', force: :cascade do |t|
    t.integer 'bottle_count', default: 0
    t.integer 'wine_id'
    t.integer 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_cellars_on_user_id'
    t.index %w[wine_id user_id], name: 'index_cellars_on_wine_id_and_user_id', unique: true
    t.index ['wine_id'], name: 'index_cellars_on_wine_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'wineries', force: :cascade do |t|
    t.string 'name'
    t.string 'location'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'wines', force: :cascade do |t|
    t.string 'name'
    t.integer 'vintage'
    t.string 'wine_type'
    t.string 'grape'
    t.string 'country'
    t.string 'region'
    t.integer 'winery_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[winery_id vintage name], name: 'index_wines_on_winery_id_and_vintage_and_name', unique: true
    t.index ['winery_id'], name: 'index_wines_on_winery_id'
  end

  add_foreign_key 'cellars', 'users'
  add_foreign_key 'cellars', 'wines'
  add_foreign_key 'wines', 'wineries'
end

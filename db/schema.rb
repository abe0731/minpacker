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

ActiveRecord::Schema.define(version: 2018_12_16_054332) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "airports", force: :cascade do |t|
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.integer "prefecture_id"
    t.integer "city_id"
    t.string "iata_cd"
    t.string "map"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_airports_on_city_id"
    t.index ["prefecture_id"], name: "index_airports_on_prefecture_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.integer "prefecture_id"
    t.string "map"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_cities_on_prefecture_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "hotel_id"
    t.string "name"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "star"
    t.index ["hotel_id"], name: "index_comments_on_hotel_id"
  end

  create_table "counts", force: :cascade do |t|
    t.integer "hotel_id"
    t.string "access"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_counts_on_hotel_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "key"
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.string "map"
    t.string "address"
    t.string "tel"
    t.string "mail"
    t.string "url"
    t.text "about1"
    t.text "about2"
    t.text "about3"
    t.text "about4"
    t.text "about5"
    t.integer "prefecture_id"
    t.integer "city_id"
    t.integer "station_id"
    t.integer "airport_id"
    t.integer "publish_flg"
    t.integer "stop_flg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airport_id"], name: "index_hotels_on_airport_id"
    t.index ["city_id"], name: "index_hotels_on_city_id"
    t.index ["prefecture_id"], name: "index_hotels_on_prefecture_id"
    t.index ["station_id"], name: "index_hotels_on_station_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "hotel_id"
    t.string "img_type"
    t.string "img"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_images_on_hotel_id"
  end

  create_table "infomations", force: :cascade do |t|
    t.string "info_type"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.string "map"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "hotel_id"
    t.text "title"
    t.integer "quantity_rent"
    t.integer "rent_unit_id"
    t.integer "quantity_stay"
    t.integer "stay_unit_id"
    t.integer "money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_prices_on_hotel_id"
    t.index ["rent_unit_id"], name: "index_prices_on_rent_unit_id"
    t.index ["stay_unit_id"], name: "index_prices_on_stay_unit_id"
  end

  create_table "rent_units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.integer "prefecture_id"
    t.integer "city_id"
    t.string "train_route1"
    t.string "train_route2"
    t.string "map"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_stations_on_city_id"
    t.index ["prefecture_id"], name: "index_stations_on_prefecture_id"
  end

  create_table "stay_units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

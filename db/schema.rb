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

ActiveRecord::Schema[7.0].define(version: 2022_05_19_161005) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "crusts", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pizza_order_toppings", force: :cascade do |t|
    t.bigint "pizza_order_id", null: false
    t.bigint "topping_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pizza_order_id"], name: "index_pizza_order_toppings_on_pizza_order_id"
    t.index ["topping_id"], name: "index_pizza_order_toppings_on_topping_id"
  end

  create_table "pizza_orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "address_id", null: false
    t.bigint "store_id", null: false
    t.bigint "crust_id", null: false
    t.bigint "sauce_id", null: false
    t.string "due_date"
    t.integer "due_time"
    t.string "status"
    t.integer "quantity"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_pizza_orders_on_address_id"
    t.index ["crust_id"], name: "index_pizza_orders_on_crust_id"
    t.index ["sauce_id"], name: "index_pizza_orders_on_sauce_id"
    t.index ["store_id"], name: "index_pizza_orders_on_store_id"
    t.index ["user_id"], name: "index_pizza_orders_on_user_id"
  end

  create_table "sauces", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "open"
    t.string "close"
    t.integer "phone"
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pizza_order_toppings", "pizza_orders"
  add_foreign_key "pizza_order_toppings", "toppings"
  add_foreign_key "pizza_orders", "addresses"
  add_foreign_key "pizza_orders", "crusts"
  add_foreign_key "pizza_orders", "sauces"
  add_foreign_key "pizza_orders", "stores"
  add_foreign_key "pizza_orders", "users"
end

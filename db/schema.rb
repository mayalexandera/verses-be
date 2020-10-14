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

ActiveRecord::Schema.define(version: 2020_10_13_215403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.string "url"
    t.string "size_chart"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_brands_on_name", unique: true
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "product_id"
    t.integer "quantity", default: 1, null: false
    t.integer "size_id"
    t.string "size_string"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "member_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "total_cost_string"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "size_id"
    t.string "size_string"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "member_id"
    t.integer "size_id"
    t.integer "product_id"
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.integer "quantity"
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "total_cost_string"
    t.index ["member_id"], name: "index_order_items_on_member_id"
    t.index ["order_id", "size_id"], name: "index_order_items_on_order_id_and_size_id", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.integer "number"
    t.integer "plan_membership_id"
    t.integer "member_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "shipped_date"
    t.datetime "order_date"
    t.integer "tax_cents", default: 0, null: false
    t.string "tax_currency", default: "USD", null: false
    t.integer "shipping_cost_cents", default: 0, null: false
    t.string "shipping_cost_currency", default: "USD", null: false
    t.integer "total_cost_cents", default: 0, null: false
    t.string "total_cost_currency", default: "USD", null: false
    t.integer "sub_total_cents", default: 0, null: false
    t.string "sub_total_currency", default: "USD", null: false
    t.string "total_cost_string"
    t.string "sub_total_string"
    t.string "tax_string"
    t.string "shipping_cost_string"
    t.index ["member_id"], name: "index_orders_on_member_id"
  end

  create_table "plan_memberships", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "plan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "plan_name"
    t.index ["member_id"], name: "index_plan_memberships_on_member_id", unique: true
  end

  create_table "plans", force: :cascade do |t|
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.string "description"
    t.string "price_string"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "items"
    t.text "features"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.integer "product_number", null: false
    t.integer "brand_id", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.text "description", null: false
    t.text "images"
    t.string "details"
    t.string "fit_details"
    t.string "product_type", null: false
    t.float "discount"
    t.string "price_string"
    t.string "size_range"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id", "product_number"], name: "index_products_on_brand_id_and_product_number", unique: true
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "brand_id"
    t.integer "product_id"
    t.integer "product_number"
    t.string "size"
    t.string "colorway"
    t.integer "stock"
    t.index ["brand_id", "product_id", "size", "colorway"], name: "index_sizes_on_brand_id_and_product_id_and_size_and_colorway", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "plan_membership_id"
    t.string "email"
    t.string "password_digest"
    t.string "session_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "subscribed", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end

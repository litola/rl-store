# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160924170112) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "external_number"
    t.string   "country"
    t.string   "neighborhood"
    t.string   "cp"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer  "product_id"
    t.float    "total"
    t.integer  "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cart_items", ["product_id"], name: "index_cart_items_on_product_id"

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.string   "type"
    t.integer  "shipping_id"
    t.integer  "cart_id"
    t.integer  "tax_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "order_items", ["cart_id"], name: "index_order_items_on_cart_id"
  add_index "order_items", ["shipping_id"], name: "index_order_items_on_shipping_id"

  create_table "order_taxes", force: :cascade do |t|
    t.integer  "tax_id"
    t.float    "total"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_taxes", ["order_id"], name: "index_order_taxes_on_order_id"
  add_index "order_taxes", ["tax_id"], name: "index_order_taxes_on_tax_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "cart_id"
    t.float    "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["cart_id"], name: "index_orders_on_cart_id"

  create_table "payments", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "transaction_id"
    t.string   "payment_type"
    t.float    "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "payments", ["order_id"], name: "index_payments_on_order_id"
  add_index "payments", ["transaction_id"], name: "index_payments_on_transaction_id"

  create_table "product_warehouses", force: :cascade do |t|
    t.integer  "warehouse_id"
    t.integer  "product_id"
    t.integer  "qty"
    t.string   "rack"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "product_warehouses", ["product_id"], name: "index_product_warehouses_on_product_id"
  add_index "product_warehouses", ["rack"], name: "index_product_warehouses_on_rack"
  add_index "product_warehouses", ["warehouse_id"], name: "index_product_warehouses_on_warehouse_id"

  create_table "products", force: :cascade do |t|
    t.float    "price"
    t.string   "name"
    t.integer  "qty"
    t.string   "description"
    t.integer  "category_id"
    t.integer  "product_type"
    t.integer  "vendor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["product_type"], name: "index_products_on_product_type"
  add_index "products", ["vendor_id"], name: "index_products_on_vendor_id"

  create_table "shippings", force: :cascade do |t|
    t.string   "region"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer  "address"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stores", ["address"], name: "index_stores_on_address"

  create_table "taxes", force: :cascade do |t|
    t.string   "name"
    t.float    "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vendors", ["category_id"], name: "index_vendors_on_category_id"

  create_table "warehouses", force: :cascade do |t|
    t.integer  "address_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "warehouses", ["address_id"], name: "index_warehouses_on_address_id"

end

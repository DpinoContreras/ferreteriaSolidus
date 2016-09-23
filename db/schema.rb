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

ActiveRecord::Schema.define(version: 20160923205934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "nombreCliente"
    t.integer  "fonoCliente"
    t.integer  "ubicacion_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "clientes", ["ubicacion_id"], name: "index_clientes_on_ubicacion_id", using: :btree

  create_table "compras", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "precioTotal"
    t.datetime "fecha"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "detalle_compras", force: :cascade do |t|
    t.integer  "numeroVenta"
    t.integer  "Producto_id"
    t.integer  "cantidadProducto"
    t.integer  "precioUnitario"
    t.integer  "precioVenta"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "codigoProducto"
    t.string   "nombre"
    t.string   "precioCompra"
    t.integer  "stock"
    t.text     "descripcion"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ubicacions", force: :cascade do |t|
    t.integer  "comunaUbicacion"
    t.integer  "direccionUbicacion"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "clientes", "ubicacions"
  add_foreign_key "compras", "clientes"
end

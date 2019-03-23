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

ActiveRecord::Schema.define(version: 20190323142525) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "email"
    t.string   "location"
    t.string   "cellphone"
    t.string   "telephone"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.integer  "service_id"
    t.index ["category_id"], name: "index_companies_on_category_id", using: :btree
    t.index ["service_id"], name: "index_companies_on_service_id", using: :btree
  end

  create_table "company_service", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "company_id"
    t.integer "services_id"
    t.index ["company_id"], name: "index_company_service_on_company_id", using: :btree
    t.index ["services_id"], name: "index_company_service_on_services_id", using: :btree
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_services_on_category_id", using: :btree
  end

  add_foreign_key "companies", "categories"
  add_foreign_key "companies", "services"
  add_foreign_key "company_service", "companies"
  add_foreign_key "company_service", "services", column: "services_id"
  add_foreign_key "services", "categories"
end

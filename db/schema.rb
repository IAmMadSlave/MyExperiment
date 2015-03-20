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

ActiveRecord::Schema.define(version: 20150313101500) do

  create_table "as_barabasis", force: true do |t|
    t.integer  "name",          null: false
    t.integer  "n",             null: false
    t.integer  "hs",            null: false
    t.integer  "ls",            null: false
    t.integer  "nodeplacement", null: false
    t.integer  "m",             null: false
    t.integer  "bwdist",        null: false
    t.integer  "bwmin",         null: false
    t.integer  "bwmax",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brite_as_barabasis", force: true do |t|
    t.integer  "n"
    t.integer  "hs"
    t.integer  "ls"
    t.integer  "nodeplacement"
    t.integer  "m"
    t.integer  "bwdist"
    t.integer  "bwmin"
    t.integer  "bwmax"
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "brite_as_barabasis", ["generator_form_id"], name: "index_brite_as_barabasis_on_generator_form_id", using: :btree
  add_index "brite_as_barabasis", ["generator_id"], name: "index_brite_as_barabasis_on_generator_id", using: :btree
  add_index "brite_as_barabasis", ["type_id"], name: "index_brite_as_barabasis_on_type_id", using: :btree
  add_index "brite_as_barabasis", ["user_id"], name: "index_brite_as_barabasis_on_user_id", using: :btree

  create_table "brite_as_waxmen", force: true do |t|
    t.integer  "n"
    t.integer  "hs"
    t.integer  "ls"
    t.integer  "nodeplacement"
    t.integer  "growth_type"
    t.decimal  "alpha",             precision: 10, scale: 0
    t.decimal  "beta",              precision: 10, scale: 0
    t.integer  "m"
    t.integer  "bwdist"
    t.integer  "bwmin"
    t.integer  "bwmax"
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "brite_as_waxmen", ["generator_form_id"], name: "index_brite_as_waxmen_on_generator_form_id", using: :btree
  add_index "brite_as_waxmen", ["generator_id"], name: "index_brite_as_waxmen_on_generator_id", using: :btree
  add_index "brite_as_waxmen", ["type_id"], name: "index_brite_as_waxmen_on_type_id", using: :btree
  add_index "brite_as_waxmen", ["user_id"], name: "index_brite_as_waxmen_on_user_id", using: :btree

  create_table "brite_rt_barabasis", force: true do |t|
    t.string   "name"
    t.integer  "n"
    t.integer  "hs"
    t.integer  "ls"
    t.integer  "nodeplacement"
    t.integer  "m"
    t.integer  "bwdist"
    t.integer  "bwmin"
    t.integer  "bwmax"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "brite_rt_barabasis", ["generator_form_id"], name: "index_brite_rt_barabasis_on_generator_form_id", using: :btree
  add_index "brite_rt_barabasis", ["generator_id"], name: "index_brite_rt_barabasis_on_generator_id", using: :btree
  add_index "brite_rt_barabasis", ["type_id"], name: "index_brite_rt_barabasis_on_type_id", using: :btree
  add_index "brite_rt_barabasis", ["user_id"], name: "index_brite_rt_barabasis_on_user_id", using: :btree

  create_table "brite_rt_waxmen", force: true do |t|
    t.string   "name"
    t.integer  "n"
    t.integer  "hs"
    t.integer  "ls"
    t.integer  "nodeplacement"
    t.integer  "growth_type"
    t.decimal  "alpha",             precision: 10, scale: 0
    t.decimal  "beta",              precision: 10, scale: 0
    t.integer  "m"
    t.integer  "bwdist"
    t.integer  "bwmin"
    t.integer  "bwmax"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "brite_rt_waxmen", ["generator_form_id"], name: "index_brite_rt_waxmen_on_generator_form_id", using: :btree
  add_index "brite_rt_waxmen", ["generator_id"], name: "index_brite_rt_waxmen_on_generator_id", using: :btree
  add_index "brite_rt_waxmen", ["type_id"], name: "index_brite_rt_waxmen_on_type_id", using: :btree
  add_index "brite_rt_waxmen", ["user_id"], name: "index_brite_rt_waxmen_on_user_id", using: :btree

  create_table "brite_td_asbarabasi_rt_waxmen", force: true do |t|
    t.string   "name"
    t.integer  "edgeconn"
    t.integer  "k"
    t.integer  "bwinter"
    t.integer  "bwintermin"
    t.integer  "bwintermax"
    t.integer  "bwintra"
    t.integer  "bwintramin"
    t.integer  "bwintramax"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
    t.integer  "Name_router_bar"
    t.integer  "N_router_bar"
    t.integer  "HS_router_bar"
    t.integer  "LS_router_bar"
    t.integer  "NodePlacement_router_bar"
    t.integer  "m_router_bar"
    t.integer  "BWDist_router_bar"
    t.integer  "BWMin_router_bar"
    t.integer  "BWMax_router_bar"
    t.integer  "Name_router_wax"
    t.integer  "N_router_wax"
    t.integer  "HS_router_wax"
    t.integer  "LS_router_wax"
    t.integer  "NodePlacement_router_wax"
    t.integer  "GrowthType_router_wax"
    t.integer  "m_router_wax"
    t.integer  "alpha_router_wax"
    t.integer  "beta_router_wax"
    t.integer  "BWDist_router_wax"
    t.integer  "BWMin_router_wax"
    t.integer  "BWMax_router_wax"
  end

  add_index "brite_td_asbarabasi_rt_waxmen", ["generator_form_id"], name: "index_brite_td_asbarabasi_rt_waxmen_on_generator_form_id", using: :btree
  add_index "brite_td_asbarabasi_rt_waxmen", ["generator_id"], name: "index_brite_td_asbarabasi_rt_waxmen_on_generator_id", using: :btree
  add_index "brite_td_asbarabasi_rt_waxmen", ["type_id"], name: "index_brite_td_asbarabasi_rt_waxmen_on_type_id", using: :btree
  add_index "brite_td_asbarabasi_rt_waxmen", ["user_id"], name: "index_brite_td_asbarabasi_rt_waxmen_on_user_id", using: :btree

  create_table "brite_td_aswaxman_rt_waxmen", force: true do |t|
    t.integer  "name"
    t.integer  "edgeconn"
    t.integer  "k"
    t.integer  "bwinter"
    t.integer  "bwintermin"
    t.integer  "bwintermax"
    t.integer  "bwintra"
    t.integer  "bwintramin"
    t.integer  "bwintramax"
    t.integer  "name_waxman_one"
    t.integer  "n"
    t.integer  "hs"
    t.integer  "ls"
    t.integer  "nodeplacement"
    t.integer  "growthtype"
    t.integer  "m"
    t.decimal  "alpha",                precision: 10, scale: 0
    t.decimal  "beta",                 precision: 10, scale: 0
    t.integer  "bwdist"
    t.integer  "bwmin"
    t.integer  "bwmax"
    t.integer  "name_rtwaxman"
    t.integer  "n_waxman"
    t.integer  "hs_waxman"
    t.integer  "ls_waxman"
    t.integer  "nodeplacement_waxman"
    t.integer  "growthtype_waxman"
    t.integer  "m_waxman"
    t.decimal  "alpha_waxman",         precision: 10, scale: 0
    t.integer  "beta_waxman"
    t.integer  "bwdist_waxman"
    t.integer  "bwmin_waxman"
    t.integer  "bwmax_waxman"
    t.integer  "generator_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "create_fnss_simple_rings", force: true do |t|
    t.integer  "n"
    t.integer  "generator_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "create_fnss_simple_rings", ["generator_form_id"], name: "index_create_fnss_simple_rings_on_generator_form_id", using: :btree

  create_table "experiments", force: true do |t|
    t.integer  "nodes"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "topoType"
    t.string   "name"
    t.string   "description"
    t.string   "tags"
  end

  add_index "experiments", ["user_id", "created_at"], name: "index_experiments_on_user_id_and_created_at", using: :btree

  create_table "fnss_datacenter_bcubes", force: true do |t|
    t.integer  "k_bcube"
    t.integer  "n_bcube"
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "fnss_datacenter_bcubes", ["generator_form_id"], name: "index_fnss_datacenter_bcubes_on_generator_form_id", using: :btree
  add_index "fnss_datacenter_bcubes", ["generator_id"], name: "index_fnss_datacenter_bcubes_on_generator_id", using: :btree
  add_index "fnss_datacenter_bcubes", ["type_id"], name: "index_fnss_datacenter_bcubes_on_type_id", using: :btree
  add_index "fnss_datacenter_bcubes", ["user_id"], name: "index_fnss_datacenter_bcubes_on_user_id", using: :btree

  create_table "fnss_datacenter_fattrees", force: true do |t|
    t.integer  "k_fattree"
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "fnss_datacenter_fattrees", ["generator_form_id"], name: "index_fnss_datacenter_fattrees_on_generator_form_id", using: :btree
  add_index "fnss_datacenter_fattrees", ["generator_id"], name: "index_fnss_datacenter_fattrees_on_generator_id", using: :btree
  add_index "fnss_datacenter_fattrees", ["type_id"], name: "index_fnss_datacenter_fattrees_on_type_id", using: :btree
  add_index "fnss_datacenter_fattrees", ["user_id"], name: "index_fnss_datacenter_fattrees_on_user_id", using: :btree

  create_table "fnss_datacenter_three_tiers", force: true do |t|
    t.integer  "n_corethree_tier"
    t.integer  "n_aggregationthree_tier"
    t.integer  "n_edgesthree_tier"
    t.integer  "n_hoststhree_tier"
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "fnss_datacenter_three_tiers", ["generator_form_id"], name: "index_fnss_datacenter_three_tiers_on_generator_form_id", using: :btree
  add_index "fnss_datacenter_three_tiers", ["generator_id"], name: "index_fnss_datacenter_three_tiers_on_generator_id", using: :btree
  add_index "fnss_datacenter_three_tiers", ["type_id"], name: "index_fnss_datacenter_three_tiers_on_type_id", using: :btree
  add_index "fnss_datacenter_three_tiers", ["user_id"], name: "index_fnss_datacenter_three_tiers_on_user_id", using: :btree

  create_table "fnss_datacenter_two_tiers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "n_coretwo_tier"
    t.integer  "n_edgetwo_tier"
    t.integer  "h_hoststwo_tier"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "fnss_datacenter_two_tiers", ["generator_form_id"], name: "index_fnss_datacenter_two_tiers_on_generator_form_id", using: :btree
  add_index "fnss_datacenter_two_tiers", ["generator_id"], name: "index_fnss_datacenter_two_tiers_on_generator_id", using: :btree
  add_index "fnss_datacenter_two_tiers", ["type_id"], name: "index_fnss_datacenter_two_tiers_on_type_id", using: :btree
  add_index "fnss_datacenter_two_tiers", ["user_id"], name: "index_fnss_datacenter_two_tiers_on_user_id", using: :btree

  create_table "fnss_simple_dumbbells", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "mone_nodedumbell"
    t.integer  "mtwo_nodedumbell"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "fnss_simple_dumbbells", ["generator_form_id"], name: "index_fnss_simple_dumbbells_on_generator_form_id", using: :btree
  add_index "fnss_simple_dumbbells", ["generator_id"], name: "index_fnss_simple_dumbbells_on_generator_id", using: :btree
  add_index "fnss_simple_dumbbells", ["type_id"], name: "index_fnss_simple_dumbbells_on_type_id", using: :btree
  add_index "fnss_simple_dumbbells", ["user_id"], name: "index_fnss_simple_dumbbells_on_user_id", using: :btree

  create_table "fnss_simple_full_meshes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "full_mesh_node"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
    t.integer  "n"
  end

  add_index "fnss_simple_full_meshes", ["generator_form_id"], name: "index_fnss_simple_full_meshes_on_generator_form_id", using: :btree
  add_index "fnss_simple_full_meshes", ["generator_id"], name: "index_fnss_simple_full_meshes_on_generator_id", using: :btree
  add_index "fnss_simple_full_meshes", ["type_id"], name: "index_fnss_simple_full_meshes_on_type_id", using: :btree
  add_index "fnss_simple_full_meshes", ["user_id"], name: "index_fnss_simple_full_meshes_on_user_id", using: :btree

  create_table "fnss_simple_kary_trees", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "k_branching_factor"
    t.integer  "h_height_of_tree"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
  end

  add_index "fnss_simple_kary_trees", ["generator_form_id"], name: "index_fnss_simple_kary_trees_on_generator_form_id", using: :btree
  add_index "fnss_simple_kary_trees", ["generator_id"], name: "index_fnss_simple_kary_trees_on_generator_id", using: :btree
  add_index "fnss_simple_kary_trees", ["type_id"], name: "index_fnss_simple_kary_trees_on_type_id", using: :btree
  add_index "fnss_simple_kary_trees", ["user_id"], name: "index_fnss_simple_kary_trees_on_user_id", using: :btree

  create_table "fnss_simple_lines", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "line_node"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
    t.integer  "n"
  end

  add_index "fnss_simple_lines", ["generator_form_id"], name: "index_fnss_simple_lines_on_generator_form_id", using: :btree
  add_index "fnss_simple_lines", ["generator_id"], name: "index_fnss_simple_lines_on_generator_id", using: :btree
  add_index "fnss_simple_lines", ["type_id"], name: "index_fnss_simple_lines_on_type_id", using: :btree
  add_index "fnss_simple_lines", ["user_id"], name: "index_fnss_simple_lines_on_user_id", using: :btree

  create_table "fnss_simple_stars", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "star_node"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "generator_form_id"
    t.integer  "n"
  end

  add_index "fnss_simple_stars", ["generator_id"], name: "index_fnss_simple_stars_on_generator_id", using: :btree
  add_index "fnss_simple_stars", ["type_id"], name: "index_fnss_simple_stars_on_type_id", using: :btree
  add_index "fnss_simple_stars", ["user_id"], name: "index_fnss_simple_stars_on_user_id", using: :btree

  create_table "fnss_simples", force: true do |t|
    t.string   "modelname"
    t.integer  "n"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generator_forms", force: true do |t|
    t.integer  "n"
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "generator_id"
    t.integer  "type_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "generator_forms", ["generator_id"], name: "index_generator_forms_on_generator_id", using: :btree
  add_index "generator_forms", ["type_id"], name: "index_generator_forms_on_type_id", using: :btree
  add_index "generator_forms", ["user_id"], name: "index_generator_forms_on_user_id", using: :btree

  create_table "generators", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rocketfuels", force: true do |t|
    t.string   "name"
    t.string   "xml"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.integer  "generator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types", ["generator_id"], name: "index_types_on_generator_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end

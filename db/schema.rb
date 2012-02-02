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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120114042644) do

  create_table "aging_product_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aging_products", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "u_start"
    t.integer  "u_end"
    t.integer  "start"
    t.integer  "end"
    t.integer  "score"
    t.integer  "score_message"
    t.integer  "weight"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
  end

  create_table "application_uses", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
    t.string   "score_message"
  end

  create_table "arrester", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",  :limit => 53
    t.float    "humidity",      :limit => 53
    t.integer  "is_gap_less"
    t.string   "mfghv"
    t.string   "mfglv"
    t.string   "mfgtv"
    t.float    "rated_current", :limit => 53
    t.float    "rated_ka",      :limit => 53
    t.float    "rated_kahv",    :limit => 53
    t.float    "rated_kalv",    :limit => 53
    t.float    "rated_katv",    :limit => 53
    t.float    "rated_kvhv",    :limit => 53
    t.float    "rated_kvlv",    :limit => 53
    t.float    "rated_kvtv",    :limit => 53
    t.float    "rated_voltage", :limit => 53
    t.datetime "test_date"
    t.string   "typehv"
    t.string   "typelv"
    t.string   "typetv"
    t.string   "updated_by"
    t.string   "weather"
    t.string   "yearhv"
    t.string   "yearlv"
    t.string   "yeartv"
    t.decimal  "perform_type",                :precision => 10, :scale => 0
    t.decimal  "transformer",                 :precision => 10, :scale => 0
  end

  create_table "arrester_conditions", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "score"
    t.string   "score_message"
    t.string   "testing"
    t.float    "start",         :limit => 24
    t.float    "end",           :limit => 24
    t.integer  "weight"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arrester_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arresters", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "h1_serial_number"
    t.decimal  "h1_test_kv",               :precision => 10, :scale => 2
    t.decimal  "h1_current",               :precision => 10, :scale => 2
    t.decimal  "h1_watt",                  :precision => 10, :scale => 2
    t.decimal  "h1_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "h1_leakage_current",       :precision => 10, :scale => 2
    t.string   "h2_serial_number"
    t.decimal  "h2_test_kv",               :precision => 10, :scale => 2
    t.decimal  "h2_current",               :precision => 10, :scale => 2
    t.decimal  "h2_watt",                  :precision => 10, :scale => 2
    t.decimal  "h2_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "h2_leakage_current",       :precision => 10, :scale => 2
    t.string   "h3_serial_number"
    t.decimal  "h3_test_kv",               :precision => 10, :scale => 2
    t.decimal  "h3_current",               :precision => 10, :scale => 2
    t.decimal  "h3_watt",                  :precision => 10, :scale => 2
    t.decimal  "h3_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "h3_leakage_current",       :precision => 10, :scale => 2
    t.string   "x1_serial_number"
    t.decimal  "x1_test_kv",               :precision => 10, :scale => 2
    t.decimal  "x1_current",               :precision => 10, :scale => 2
    t.decimal  "x1_watt",                  :precision => 10, :scale => 2
    t.decimal  "x1_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "x1_leakage_current",       :precision => 10, :scale => 2
    t.string   "x2_serial_number"
    t.decimal  "x2_test_kv",               :precision => 10, :scale => 2
    t.decimal  "x2_current",               :precision => 10, :scale => 2
    t.decimal  "x2_watt",                  :precision => 10, :scale => 2
    t.decimal  "x2_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "x2_leakage_current",       :precision => 10, :scale => 2
    t.string   "x3_serial_number"
    t.decimal  "x3_test_kv",               :precision => 10, :scale => 2
    t.decimal  "x3_current",               :precision => 10, :scale => 2
    t.decimal  "x3_watt",                  :precision => 10, :scale => 2
    t.decimal  "x3_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "x3_leakage_current",       :precision => 10, :scale => 2
    t.string   "y1_serial_number"
    t.decimal  "y1_test_kv",               :precision => 10, :scale => 2
    t.decimal  "y1_current",               :precision => 10, :scale => 2
    t.decimal  "y1_watt",                  :precision => 10, :scale => 2
    t.decimal  "y1_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "y1_leakage_current",       :precision => 10, :scale => 2
    t.string   "y2_serial_number"
    t.decimal  "y2_test_kv",               :precision => 10, :scale => 2
    t.decimal  "y2_current",               :precision => 10, :scale => 2
    t.decimal  "y2_watt",                  :precision => 10, :scale => 2
    t.decimal  "y2_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "y2_leakage_current",       :precision => 10, :scale => 2
    t.string   "y3_serial_number"
    t.decimal  "y3_test_kv",               :precision => 10, :scale => 2
    t.decimal  "y3_current",               :precision => 10, :scale => 2
    t.decimal  "y3_watt",                  :precision => 10, :scale => 2
    t.decimal  "y3_insulation_resistance", :precision => 10, :scale => 2
    t.decimal  "y3_leakage_current",       :precision => 10, :scale => 2
    t.integer  "transformer_id"
    t.string   "test_type"
    t.datetime "test_date"
    t.string   "work_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", :id => false, :force => true do |t|
    t.integer  "id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "score"
    t.string   "score_message"
  end

  create_table "bus_voltage_hvs", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bus_voltage_lvs", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bus_voltages", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "start"
    t.integer  "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bushing", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "amphv",        :limit => 53
    t.float    "amplv",        :limit => 53
    t.float    "amptv",        :limit => 53
    t.integer  "bilhv"
    t.integer  "billv"
    t.integer  "biltv"
    t.float    "caphv",        :limit => 53
    t.float    "caplv",        :limit => 53
    t.float    "captv",        :limit => 53
    t.integer  "classhv"
    t.integer  "classlv"
    t.integer  "classtv"
    t.float    "kvhv",         :limit => 53
    t.float    "kvlv",         :limit => 53
    t.float    "kvtv",         :limit => 53
    t.string   "manufachv"
    t.string   "manufaclv"
    t.string   "manufactv"
    t.float    "pfhv",         :limit => 53
    t.float    "pflv",         :limit => 53
    t.float    "pftv",         :limit => 53
    t.datetime "test_date"
    t.string   "typehv"
    t.string   "typelv"
    t.string   "typetv"
    t.string   "updated_by"
    t.string   "yearhv"
    t.string   "yearlv"
    t.string   "yeartv"
    t.decimal  "perform_type",               :precision => 10, :scale => 0
    t.decimal  "transformer",                :precision => 10, :scale => 0
  end

  create_table "bushing_condition_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  create_table "bushing_conditions", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "oil_color_hv",         :precision => 10, :scale => 0
    t.decimal "oil_color_lv",         :precision => 10, :scale => 0
    t.decimal "oil_color_tv",         :precision => 10, :scale => 0
    t.decimal "oil_fail_hv",          :precision => 10, :scale => 0
    t.decimal "oil_fail_lv",          :precision => 10, :scale => 0
    t.decimal "oil_fail_tv",          :precision => 10, :scale => 0
    t.decimal "oil_level_hv",         :precision => 10, :scale => 0
    t.decimal "oil_level_lv",         :precision => 10, :scale => 0
    t.decimal "oil_level_tv",         :precision => 10, :scale => 0
    t.decimal "porcelain_clean_hv",   :precision => 10, :scale => 0
    t.decimal "porcelain_clean_lv",   :precision => 10, :scale => 0
    t.decimal "porcelain_clean_tv",   :precision => 10, :scale => 0
    t.decimal "porcelain_status_hv",  :precision => 10, :scale => 0
    t.decimal "porcelain_status_lv",  :precision => 10, :scale => 0
    t.decimal "porcelain_status_tv",  :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "bushing_test_conditions", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "score"
    t.string   "score_message"
    t.string   "testing"
    t.float    "start",         :limit => 24
    t.float    "end",           :limit => 24
    t.integer  "weight"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bushing_test_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bushing_tests", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "transformer_id"
    t.string   "test_type"
    t.datetime "test_date"
    t.string   "work_order"
    t.string   "h1_c1_serial_number"
    t.integer  "h1_c1_test_kv"
    t.decimal  "h1_c1_current",       :precision => 10, :scale => 2
    t.decimal  "h1_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "h1_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "h1_c1_remark"
    t.string   "h1_c2_serial_number"
    t.integer  "h1_c2_test_kv"
    t.decimal  "h1_c2_current",       :precision => 10, :scale => 2
    t.decimal  "h1_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "h1_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "h1_c2_remark"
    t.string   "h2_c1_serial_number"
    t.integer  "h2_c1_test_kv"
    t.decimal  "h2_c1_current",       :precision => 10, :scale => 2
    t.decimal  "h2_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "h2_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "h2_c1_remark"
    t.string   "h2_c2_serial_number"
    t.integer  "h2_c2_test_kv"
    t.decimal  "h2_c2_current",       :precision => 10, :scale => 2
    t.decimal  "h2_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "h2_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "h2_c2_remark"
    t.string   "h3_c1_serial_number"
    t.integer  "h3_c1_test_kv"
    t.decimal  "h3_c1_current",       :precision => 10, :scale => 2
    t.decimal  "h3_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "h3_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "h3_c1_remark"
    t.string   "h3_c2_serial_number"
    t.integer  "h3_c2_test_kv"
    t.decimal  "h3_c2_current",       :precision => 10, :scale => 2
    t.decimal  "h3_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "h3_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "h3_c2_remark"
    t.string   "h0_c1_serial_number"
    t.integer  "h0_c1_test_kv"
    t.decimal  "h0_c1_current",       :precision => 10, :scale => 2
    t.decimal  "h0_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "h0_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "h0_c1_remark"
    t.string   "h0_c2_serial_number"
    t.integer  "h0_c2_test_kv"
    t.decimal  "h0_c2_current",       :precision => 10, :scale => 2
    t.decimal  "h0_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "h0_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "h0_c2_remark"
    t.string   "x1_c1_serial_number"
    t.integer  "x1_c1_test_kv"
    t.decimal  "x1_c1_current",       :precision => 10, :scale => 2
    t.decimal  "x1_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "x1_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "x1_c1_remark"
    t.string   "x1_c2_serial_number"
    t.integer  "x1_c2_test_kv"
    t.decimal  "x1_c2_current",       :precision => 10, :scale => 2
    t.decimal  "x1_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "x1_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "x1_c2_remark"
    t.string   "x2_c1_serial_number"
    t.integer  "x2_c1_test_kv"
    t.decimal  "x2_c1_current",       :precision => 10, :scale => 2
    t.decimal  "x2_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "x2_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "x2_c1_remark"
    t.string   "x2_c2_serial_number"
    t.integer  "x2_c2_test_kv"
    t.decimal  "x2_c2_current",       :precision => 10, :scale => 2
    t.decimal  "x2_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "x2_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "x2_c2_remark"
    t.string   "x3_c1_serial_number"
    t.integer  "x3_c1_test_kv"
    t.decimal  "x3_c1_current",       :precision => 10, :scale => 2
    t.decimal  "x3_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "x3_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "x3_c1_remark"
    t.string   "x3_c2_serial_number"
    t.integer  "x3_c2_test_kv"
    t.decimal  "x3_c2_current",       :precision => 10, :scale => 2
    t.decimal  "x3_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "x3_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "x3_c2_remark"
    t.string   "x0_c1_serial_number"
    t.integer  "x0_c1_test_kv"
    t.decimal  "x0_c1_current",       :precision => 10, :scale => 2
    t.decimal  "x0_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "x0_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "x0_c1_remark"
    t.string   "x0_c2_serial_number"
    t.integer  "x0_c2_test_kv"
    t.decimal  "x0_c2_current",       :precision => 10, :scale => 2
    t.decimal  "x0_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "x0_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "x0_c2_remark"
    t.string   "y1_c1_serial_number"
    t.integer  "y1_c1_test_kv"
    t.decimal  "y1_c1_current",       :precision => 10, :scale => 2
    t.decimal  "y1_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "y1_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "y1_c1_remark"
    t.string   "y1_c2_serial_number"
    t.integer  "y1_c2_test_kv"
    t.decimal  "y1_c2_current",       :precision => 10, :scale => 2
    t.decimal  "y1_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "y1_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "y1_c2_remark"
    t.string   "y2_c1_serial_number"
    t.integer  "y2_c1_test_kv"
    t.decimal  "y2_c1_current",       :precision => 10, :scale => 2
    t.decimal  "y2_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "y2_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "y2_c1_remark"
    t.string   "y2_c2_serial_number"
    t.integer  "y2_c2_test_kv"
    t.decimal  "y2_c2_current",       :precision => 10, :scale => 2
    t.decimal  "y2_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "y2_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "y2_c2_remark"
    t.string   "y3_c1_serial_number"
    t.integer  "y3_c1_test_kv"
    t.decimal  "y3_c1_current",       :precision => 10, :scale => 2
    t.decimal  "y3_c1_watt",          :precision => 10, :scale => 2
    t.decimal  "y3_c1_capacitance",   :precision => 10, :scale => 2
    t.string   "y3_c1_remark"
    t.string   "y3_c2_serial_number"
    t.integer  "y3_c2_test_kv"
    t.decimal  "y3_c2_current",       :precision => 10, :scale => 2
    t.decimal  "y3_c2_watt",          :precision => 10, :scale => 2
    t.decimal  "y3_c2_capacitance",   :precision => 10, :scale => 2
    t.string   "y3_c2_remark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "cf",                  :precision => 10, :scale => 0
  end

  create_table "chart_present", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
  end

  create_table "colors", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conservator_tank", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "breather_maintank",  :precision => 10, :scale => 0
    t.decimal  "breather_oltc",      :precision => 10, :scale => 0
    t.decimal  "corrosion_maintank", :precision => 10, :scale => 0
    t.decimal  "corrosion_oltc",     :precision => 10, :scale => 0
    t.decimal  "jel_color_maintank", :precision => 10, :scale => 0
    t.decimal  "jel_color_oltc",     :precision => 10, :scale => 0
    t.decimal  "oil_level_maintank", :precision => 10, :scale => 0
    t.decimal  "oil_level_oltc",     :precision => 10, :scale => 0
    t.decimal  "oilfail_maintank",   :precision => 10, :scale => 0
    t.decimal  "oilfail_oltc",       :precision => 10, :scale => 0
    t.decimal  "perform_type",       :precision => 10, :scale => 0
    t.decimal  "transformer",        :precision => 10, :scale => 0
  end

  create_table "conservator_tank_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conservator_tanks", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "breather_maintank",    :precision => 10, :scale => 0
    t.decimal "breather_oltc",        :precision => 10, :scale => 0
    t.decimal "corrosion_maintank",   :precision => 10, :scale => 0
    t.decimal "corrosion_oltc",       :precision => 10, :scale => 0
    t.decimal "jel_color_maintank",   :precision => 10, :scale => 0
    t.decimal "jel_color_oltc",       :precision => 10, :scale => 0
    t.decimal "oil_level_maintank",   :precision => 10, :scale => 0
    t.decimal "oil_level_oltc",       :precision => 10, :scale => 0
    t.decimal "oilfail_maintank",     :precision => 10, :scale => 0
    t.decimal "oilfail_oltc",         :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "damage_of_properties", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "damage_of_properties_transformer_informations", :id => false, :force => true do |t|
    t.integer  "damage_of_property_id"
    t.integer  "transformer_information_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dga_gas_scores", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "score"
    t.string   "score_message"
    t.integer  "start"
    t.integer  "end"
    t.integer  "weight"
    t.integer  "gas_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dgas", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "gas"
    t.integer  "start"
    t.integer  "end"
    t.integer  "score"
    t.string   "score_message"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eco_option1s", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "user_id"
    t.integer  "transformer_id"
    t.integer  "transformer_price"
    t.integer  "noload_loss"
    t.integer  "loadloss"
    t.integer  "pm"
    t.integer  "mc_avg"
    t.integer  "det_cost"
    t.string   "winding_type"
    t.integer  "winding_cost"
    t.string   "bushing_type"
    t.integer  "bushing_cost"
    t.string   "arrester_type"
    t.integer  "arrester_cost"
    t.string   "oltc_type"
    t.integer  "oltc_cost"
    t.string   "hotline_type"
    t.integer  "hotline_cost"
    t.integer  "cooling"
    t.integer  "overhaul"
    t.integer  "overhaul_and_refurbish"
    t.integer  "rep_rubber_bag"
    t.integer  "rep_bct"
    t.integer  "others"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eco_option2s", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "new_transformer_price"
    t.integer  "rated_power"
    t.integer  "noload_loss"
    t.integer  "loadloss"
    t.integer  "pm"
    t.integer  "mc_avg"
    t.integer  "det_cost"
    t.integer  "user_id"
    t.integer  "transformer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eco_option3s", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "new_transformer_price"
    t.integer  "rated_power"
    t.integer  "noload_loss"
    t.integer  "loadloss"
    t.integer  "pm"
    t.integer  "mc_avg"
    t.integer  "det_cost"
    t.integer  "user_id"
    t.integer  "transformer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elec_cor", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.integer  "resistance"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "perform_type", :precision => 10, :scale => 0
    t.decimal  "transformer",  :precision => 10, :scale => 0
  end

  create_table "elec_dcr", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",  :limit => 53
    t.float    "amph1h0_2r",    :limit => 53
    t.float    "amph1h0_max",   :limit => 53
    t.float    "amph1h0_min",   :limit => 53
    t.float    "amph1h0_n",     :limit => 53
    t.float    "amph2h0_2r",    :limit => 53
    t.float    "amph2h0_max",   :limit => 53
    t.float    "amph2h0_min",   :limit => 53
    t.float    "amph2h0_n",     :limit => 53
    t.float    "amph3h0_2r",    :limit => 53
    t.float    "amph3h0_max",   :limit => 53
    t.float    "amph3h0_min",   :limit => 53
    t.float    "amph3h0_n",     :limit => 53
    t.float    "ampx1x0",       :limit => 53
    t.float    "ampx2x0",       :limit => 53
    t.float    "ampx3x0",       :limit => 53
    t.float    "ampy1y2",       :limit => 53
    t.float    "ampy2y3",       :limit => 53
    t.float    "ampy3y1",       :limit => 53
    t.float    "humidity",      :limit => 53
    t.float    "oil_temp",      :limit => 53
    t.float    "rated_current", :limit => 53
    t.string   "remarkhv_2r"
    t.string   "remarkhv_max"
    t.string   "remarkhv_min"
    t.string   "remarkhv_n"
    t.string   "remarklv"
    t.string   "remarktv"
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "volth1h0_2r",   :limit => 53
    t.float    "volth1h0_max",  :limit => 53
    t.float    "volth1h0_min",  :limit => 53
    t.float    "volth1h0_n",    :limit => 53
    t.float    "volth2h0_2r",   :limit => 53
    t.float    "volth2h0_max",  :limit => 53
    t.float    "volth2h0_min",  :limit => 53
    t.float    "volth2h0_n",    :limit => 53
    t.float    "volth3h0_2r",   :limit => 53
    t.float    "volth3h0_max",  :limit => 53
    t.float    "volth3h0_min",  :limit => 53
    t.float    "volth3h0_n",    :limit => 53
    t.float    "voltx1x0",      :limit => 53
    t.float    "voltx2x0",      :limit => 53
    t.float    "voltx3x0",      :limit => 53
    t.float    "volty1y2",      :limit => 53
    t.float    "volty2y3",      :limit => 53
    t.float    "volty3y1",      :limit => 53
    t.float    "wdg_temp",      :limit => 53
    t.string   "weather"
    t.string   "work_order"
    t.decimal  "perform_type",                :precision => 10, :scale => 0
    t.decimal  "transformer",                 :precision => 10, :scale => 0
  end

  create_table "elec_exc", :id => false, :force => true do |t|
    t.integer  "id"
    t.float    "ac_amph1h0",     :limit => 53
    t.float    "ac_amph1h0_2r",  :limit => 53
    t.float    "ac_amph1h0_max", :limit => 53
    t.float    "ac_amph1h0_min", :limit => 53
    t.float    "ac_amph1h0_n",   :limit => 53
    t.float    "ac_amph2h0",     :limit => 53
    t.float    "ac_amph2h0_2r",  :limit => 53
    t.float    "ac_amph2h0_max", :limit => 53
    t.float    "ac_amph2h0_min", :limit => 53
    t.float    "ac_amph2h0_n",   :limit => 53
    t.float    "ac_amph3h0",     :limit => 53
    t.float    "ac_amph3h0_2r",  :limit => 53
    t.float    "ac_amph3h0_max", :limit => 53
    t.float    "ac_amph3h0_min", :limit => 53
    t.float    "ac_amph3h0_n",   :limit => 53
    t.float    "ac_ampx1x0",     :limit => 53
    t.float    "ac_ampx1x0_n",   :limit => 53
    t.float    "ac_ampx2x0",     :limit => 53
    t.float    "ac_ampx2x0_n",   :limit => 53
    t.float    "ac_ampx3x0",     :limit => 53
    t.float    "ac_ampx3x0_n",   :limit => 53
    t.float    "ac_ampy1y2",     :limit => 53
    t.float    "ac_ampy2y3",     :limit => 53
    t.float    "ac_ampy3y1",     :limit => 53
    t.float    "ac_kvhv",        :limit => 53
    t.float    "ac_kvlv",        :limit => 53
    t.float    "ac_volthv",      :limit => 53
    t.float    "ac_voltlv",      :limit => 53
    t.float    "ac_volttv",      :limit => 53
    t.integer  "version"
    t.float    "ambient_temp",   :limit => 53
    t.float    "humidity",       :limit => 53
    t.string   "hv_max_tap"
    t.string   "hv_min_tap"
    t.string   "hv_tap"
    t.float    "oil_temp",       :limit => 53
    t.float    "rated_current",  :limit => 53
    t.string   "remarkhv"
    t.string   "remarkhv_2r"
    t.string   "remarkhv_max"
    t.string   "remarkhv_min"
    t.string   "remarkhv_n"
    t.string   "remarklv"
    t.string   "remarklv_n"
    t.string   "remarktv"
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "wdg_temp",       :limit => 53
    t.string   "weather"
    t.string   "work_order"
    t.decimal  "perform_type",                 :precision => 10, :scale => 0
    t.decimal  "transformer",                  :precision => 10, :scale => 0
  end

  create_table "elec_imp_single", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",     :limit => 53
    t.float    "amp1_2r",          :limit => 53
    t.float    "amp1_max",         :limit => 53
    t.float    "amp1_min",         :limit => 53
    t.float    "amp1_n",           :limit => 53
    t.float    "amp1_n_ht",        :limit => 53
    t.float    "amp1_n_lt",        :limit => 53
    t.float    "amp2_2r",          :limit => 53
    t.float    "amp2_max",         :limit => 53
    t.float    "amp2_min",         :limit => 53
    t.float    "amp2_n",           :limit => 53
    t.float    "amp2_n_ht",        :limit => 53
    t.float    "amp2_n_lt",        :limit => 53
    t.float    "amp3_2r",          :limit => 53
    t.float    "amp3_max",         :limit => 53
    t.float    "amp3_min",         :limit => 53
    t.float    "amp3_n",           :limit => 53
    t.float    "amp3_n_ht",        :limit => 53
    t.float    "amp3_n_lt",        :limit => 53
    t.float    "humidity",         :limit => 53
    t.string   "max_tap"
    t.string   "min_tap"
    t.float    "oil_temp",         :limit => 53
    t.float    "rate_imp1_2r",     :limit => 53
    t.float    "rate_imp1_max",    :limit => 53
    t.float    "rate_imp1_min",    :limit => 53
    t.float    "rate_imp1_n",      :limit => 53
    t.float    "rate_imp1_n_ht",   :limit => 53
    t.float    "rate_imp1_n_lt",   :limit => 53
    t.float    "rate_imp2_2r",     :limit => 53
    t.float    "rate_imp2_max",    :limit => 53
    t.float    "rate_imp2_min",    :limit => 53
    t.float    "rate_imp2_n",      :limit => 53
    t.float    "rate_imp2_n_ht",   :limit => 53
    t.float    "rate_imp2_n_lt",   :limit => 53
    t.float    "rate_imp3_2r",     :limit => 53
    t.float    "rate_imp3_max",    :limit => 53
    t.float    "rate_imp3_min",    :limit => 53
    t.float    "rate_imp3_n",      :limit => 53
    t.float    "rate_imp3_n_ht",   :limit => 53
    t.float    "rate_imp3_n_lt",   :limit => 53
    t.float    "rated_current",    :limit => 53
    t.string   "test_by"
    t.string   "test_choice_2r"
    t.string   "test_choice_max"
    t.string   "test_choice_min"
    t.string   "test_choice_n"
    t.string   "test_choice_n_ht"
    t.string   "test_choice_n_lt"
    t.datetime "test_date"
    t.float    "volt1_2r",         :limit => 53
    t.float    "volt1_max",        :limit => 53
    t.float    "volt1_min",        :limit => 53
    t.float    "volt1_n",          :limit => 53
    t.float    "volt1_n_ht",       :limit => 53
    t.float    "volt1_n_lt",       :limit => 53
    t.float    "volt2_2r",         :limit => 53
    t.float    "volt2_max",        :limit => 53
    t.float    "volt2_min",        :limit => 53
    t.float    "volt2_n",          :limit => 53
    t.float    "volt2_n_ht",       :limit => 53
    t.float    "volt2_n_lt",       :limit => 53
    t.float    "volt3_2r",         :limit => 53
    t.float    "volt3_max",        :limit => 53
    t.float    "volt3_min",        :limit => 53
    t.float    "volt3_n",          :limit => 53
    t.float    "volt3_n_ht",       :limit => 53
    t.float    "volt3_n_lt",       :limit => 53
    t.float    "wdg_temp",         :limit => 53
    t.string   "weather"
    t.string   "work_order"
    t.decimal  "perform_type",                   :precision => 10, :scale => 0
    t.decimal  "transformer",                    :precision => 10, :scale => 0
  end

  create_table "elec_imp_three", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",        :limit => 53
    t.float    "amp1_2r",             :limit => 53
    t.float    "amp1_max",            :limit => 53
    t.float    "amp1_min",            :limit => 53
    t.float    "amp1_n",              :limit => 53
    t.float    "amp1_n_ht",           :limit => 53
    t.float    "amp1_n_lt",           :limit => 53
    t.float    "amp2_2r",             :limit => 53
    t.float    "amp2_max",            :limit => 53
    t.float    "amp2_min",            :limit => 53
    t.float    "amp2_n",              :limit => 53
    t.float    "amp2_n_ht",           :limit => 53
    t.float    "amp2_n_lt",           :limit => 53
    t.float    "amp3_2r",             :limit => 53
    t.float    "amp3_max",            :limit => 53
    t.float    "amp3_min",            :limit => 53
    t.float    "amp3_n",              :limit => 53
    t.float    "amp3_n_ht",           :limit => 53
    t.float    "amp3_n_lt",           :limit => 53
    t.float    "humidity",            :limit => 53
    t.string   "impedance_from_2r"
    t.string   "impedance_from_max"
    t.string   "impedance_from_min"
    t.string   "impedance_from_n"
    t.string   "impedance_from_n_ht"
    t.string   "impedance_from_n_lt"
    t.string   "max_tap"
    t.string   "min_tap"
    t.float    "oil_temp",            :limit => 53
    t.float    "rate_impedance_2r",   :limit => 53
    t.float    "rate_impedance_max",  :limit => 53
    t.float    "rate_impedance_min",  :limit => 53
    t.float    "rate_impedance_n",    :limit => 53
    t.float    "rate_impedance_n_ht", :limit => 53
    t.float    "rate_impedance_n_lt", :limit => 53
    t.float    "rated_kv",            :limit => 53
    t.float    "tap_voltage_2r",      :limit => 53
    t.float    "tap_voltage_max",     :limit => 53
    t.float    "tap_voltage_min",     :limit => 53
    t.float    "tap_voltage_n",       :limit => 53
    t.float    "tap_voltage_n_ht",    :limit => 53
    t.float    "tap_voltage_n_lt",    :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "volt1_2r",            :limit => 53
    t.float    "volt1_max",           :limit => 53
    t.float    "volt1_min",           :limit => 53
    t.float    "volt1_n",             :limit => 53
    t.float    "volt1_n_ht",          :limit => 53
    t.float    "volt1_n_lt",          :limit => 53
    t.float    "volt2_2r",            :limit => 53
    t.float    "volt2_max",           :limit => 53
    t.float    "volt2_min",           :limit => 53
    t.float    "volt2_n",             :limit => 53
    t.float    "volt2_n_ht",          :limit => 53
    t.float    "volt2_n_lt",          :limit => 53
    t.float    "volt3_2r",            :limit => 53
    t.float    "volt3_max",           :limit => 53
    t.float    "volt3_min",           :limit => 53
    t.float    "volt3_n",             :limit => 53
    t.float    "volt3_n_ht",          :limit => 53
    t.float    "volt3_n_lt",          :limit => 53
    t.float    "wdg_temp",            :limit => 53
    t.string   "weather"
    t.string   "work_order"
    t.decimal  "perform_type",                      :precision => 10, :scale => 0
    t.decimal  "transformer",                       :precision => 10, :scale => 0
  end

  create_table "elec_ins_auto", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",  :limit => 53
    t.float    "cap1",          :limit => 53
    t.float    "cap2",          :limit => 53
    t.float    "cap3",          :limit => 53
    t.float    "cap4",          :limit => 53
    t.float    "corpc",         :limit => 53
    t.float    "current1",      :limit => 53
    t.float    "current2",      :limit => 53
    t.float    "current3",      :limit => 53
    t.float    "current4",      :limit => 53
    t.float    "humidity",      :limit => 53
    t.float    "hv1",           :limit => 53
    t.float    "hv10",          :limit => 53
    t.float    "hv_test",       :limit => 53
    t.float    "oil_temp",      :limit => 53
    t.float    "rated_current", :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "test_kv",       :limit => 53
    t.float    "tv1",           :limit => 53
    t.float    "tv10",          :limit => 53
    t.float    "tv_test",       :limit => 53
    t.float    "watt1",         :limit => 53
    t.float    "watt2",         :limit => 53
    t.float    "watt3",         :limit => 53
    t.float    "watt4",         :limit => 53
    t.float    "wdg_temp",      :limit => 53
    t.string   "weather"
    t.string   "work_order"
    t.decimal  "perform_type",                :precision => 10, :scale => 0
    t.decimal  "transformer",                 :precision => 10, :scale => 0
  end

  create_table "elec_ins_three", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",  :limit => 53
    t.float    "cap1",          :limit => 53
    t.float    "cap2",          :limit => 53
    t.float    "cap3",          :limit => 53
    t.float    "cap4",          :limit => 53
    t.float    "cap5",          :limit => 53
    t.float    "cap6",          :limit => 53
    t.float    "corpc",         :limit => 53
    t.float    "current1",      :limit => 53
    t.float    "current2",      :limit => 53
    t.float    "current3",      :limit => 53
    t.float    "current4",      :limit => 53
    t.float    "current5",      :limit => 53
    t.float    "current6",      :limit => 53
    t.float    "humidity",      :limit => 53
    t.float    "hv1",           :limit => 53
    t.float    "hv10",          :limit => 53
    t.float    "hv_test",       :limit => 53
    t.float    "lv1",           :limit => 53
    t.float    "lv10",          :limit => 53
    t.float    "lv_test",       :limit => 53
    t.float    "oil_temp",      :limit => 53
    t.float    "rated_current", :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "test_kv",       :limit => 53
    t.float    "tv1",           :limit => 53
    t.float    "tv10",          :limit => 53
    t.float    "tv_test",       :limit => 53
    t.float    "watt1",         :limit => 53
    t.float    "watt2",         :limit => 53
    t.float    "watt3",         :limit => 53
    t.float    "watt4",         :limit => 53
    t.float    "watt5",         :limit => 53
    t.float    "watt6",         :limit => 53
    t.float    "wdg_temp",      :limit => 53
    t.string   "weather"
    t.string   "work_order"
    t.decimal  "perform_type",                :precision => 10, :scale => 0
    t.decimal  "transformer",                 :precision => 10, :scale => 0
  end

  create_table "elec_ins_two", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",  :limit => 53
    t.float    "cap1",          :limit => 53
    t.float    "cap2",          :limit => 53
    t.float    "cap3",          :limit => 53
    t.float    "cap4",          :limit => 53
    t.float    "corpc",         :limit => 53
    t.float    "current1",      :limit => 53
    t.float    "current2",      :limit => 53
    t.float    "current3",      :limit => 53
    t.float    "current4",      :limit => 53
    t.float    "humidity",      :limit => 53
    t.float    "hv1",           :limit => 53
    t.float    "hv10",          :limit => 53
    t.float    "hv_test",       :limit => 53
    t.float    "lv1",           :limit => 53
    t.float    "lv10",          :limit => 53
    t.float    "lv_test",       :limit => 53
    t.float    "oil_temp",      :limit => 53
    t.float    "rated_current", :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "test_kv",       :limit => 53
    t.float    "watt1",         :limit => 53
    t.float    "watt2",         :limit => 53
    t.float    "watt3",         :limit => 53
    t.float    "watt4",         :limit => 53
    t.float    "wdg_temp",      :limit => 53
    t.string   "weather"
    t.string   "work_order"
    t.decimal  "perform_type",                :precision => 10, :scale => 0
    t.decimal  "transformer",                 :precision => 10, :scale => 0
  end

  create_table "elec_rat", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",    :limit => 53
    t.float    "h1h0ratio_2r",    :limit => 53
    t.float    "h1h0ratio_max",   :limit => 53
    t.float    "h1h0ratio_min",   :limit => 53
    t.float    "h1h0ratio_n",     :limit => 53
    t.float    "h1h0ratio_n_tv",  :limit => 53
    t.float    "h2h0ratio_2r",    :limit => 53
    t.float    "h2h0ratio_max",   :limit => 53
    t.float    "h2h0ratio_min",   :limit => 53
    t.float    "h2h0ratio_n",     :limit => 53
    t.float    "h2h0ratio_n_tv",  :limit => 53
    t.float    "h3h0ratio_2r",    :limit => 53
    t.float    "h3h0ratio_max",   :limit => 53
    t.float    "h3h0ratio_min",   :limit => 53
    t.float    "h3h0ratio_n",     :limit => 53
    t.float    "h3h0ratio_n_tv",  :limit => 53
    t.float    "humidity",        :limit => 53
    t.string   "max_tap"
    t.string   "min_tap"
    t.float    "oil_temp",        :limit => 53
    t.float    "rated_current",   :limit => 53
    t.string   "remark_2r"
    t.string   "remark_lv_tv"
    t.string   "remark_max"
    t.string   "remark_min"
    t.string   "remark_n"
    t.string   "remark_n_tv"
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "volthv_2r",       :limit => 53
    t.float    "volthv_hv_tv",    :limit => 53
    t.float    "volthv_lv_tv",    :limit => 53
    t.float    "volthv_max",      :limit => 53
    t.float    "volthv_min",      :limit => 53
    t.float    "volthv_n",        :limit => 53
    t.float    "voltlv_2r",       :limit => 53
    t.float    "voltlv_hv_tv",    :limit => 53
    t.float    "voltlv_lv_tv",    :limit => 53
    t.float    "voltlv_max",      :limit => 53
    t.float    "voltlv_min",      :limit => 53
    t.float    "voltlv_n",        :limit => 53
    t.float    "wdg_temp",        :limit => 53
    t.string   "weather"
    t.string   "work_order"
    t.float    "x1x0ratio_lv_tv", :limit => 53
    t.float    "x2x0ratio_lv_tv", :limit => 53
    t.float    "x3x0ratio_lv_tv", :limit => 53
    t.decimal  "perform_type",                  :precision => 10, :scale => 0
    t.decimal  "transformer",                   :precision => 10, :scale => 0
  end

  create_table "equipment", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "name"
    t.decimal "equipment_group", :precision => 10, :scale => 0
  end

  create_table "equipment_group", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "description"
  end

  create_table "factor_settings", :id => false, :force => true do |t|
    t.integer  "id"
    t.float    "intrate",        :limit => 24
    t.float    "infrate",        :limit => 24
    t.float    "loadavg",        :limit => 24
    t.float    "loadloss",       :limit => 24
    t.integer  "projectlife"
    t.integer  "zerolife"
    t.float    "power",          :limit => 24
    t.float    "unavailability", :limit => 24
    t.float    "powerfactor",    :limit => 24
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "failure_condition", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "description"
  end

  create_table "failure_condition_detail", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "detail"
    t.integer "is_other"
    t.decimal "failure_condition", :precision => 10, :scale => 0
  end

  create_table "failure_databases", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "egatsn"
    t.datetime "eventdate"
    t.integer  "counterOLTC"
    t.string   "environment"
    t.string   "failurestatus"
    t.string   "failuredetail"
    t.datetime "downdatetime"
    t.datetime "updatetime"
    t.string   "workorder"
    t.string   "failuregroup"
    t.string   "failurepart"
    t.string   "failuremode"
    t.string   "failurereason"
    t.string   "manage"
    t.string   "remark"
    t.string   "user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_details", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_environmnts", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "environmnt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_functions", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "function"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_group_parts", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "groupname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_manages", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "manage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_modes", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "mode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_parts", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "mainid"
    t.string   "part"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fd_reasons", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fruits", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
  end

  create_table "furan_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.float    "start",      :limit => 24
    t.float    "end",        :limit => 24
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "furans", :id => false, :force => true do |t|
    t.integer  "id"
    t.float    "acf",            :limit => 53
    t.float    "fal",            :limit => 53
    t.float    "fol",            :limit => 53
    t.float    "hmf",            :limit => 53
    t.float    "mef",            :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "perform_type",                 :precision => 10, :scale => 0
    t.integer  "transformer_id"
    t.string   "test_type"
  end

  create_table "gas", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "general_condition", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "animal_protect",   :precision => 10, :scale => 0
    t.decimal  "foundation",       :precision => 10, :scale => 0
    t.decimal  "ground_connector", :precision => 10, :scale => 0
    t.decimal  "percentload",      :precision => 10, :scale => 0
    t.decimal  "perform_type",     :precision => 10, :scale => 0
    t.decimal  "sound",            :precision => 10, :scale => 0
    t.decimal  "transformer",      :precision => 10, :scale => 0
    t.decimal  "vibration",        :precision => 10, :scale => 0
  end

  create_table "general_condition_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "general_conditions", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "animal_protect",       :precision => 10, :scale => 0
    t.decimal  "foundation",           :precision => 10, :scale => 0
    t.decimal  "ground_connector",     :precision => 10, :scale => 0
    t.decimal  "maxload",              :precision => 10, :scale => 0
    t.decimal  "perform_type",         :precision => 10, :scale => 0
    t.decimal  "sound",                :precision => 10, :scale => 0
    t.decimal  "transformer_id",       :precision => 10, :scale => 0
    t.decimal  "vibration",            :precision => 10, :scale => 0
    t.integer  "visual_inspection_id"
  end

  create_table "hif_of_oil_dgas", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "percent_dgaf_start"
    t.integer  "percent_dgaf_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
  end

  create_table "hot_line_oil_filter", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "corrosion",    :precision => 10, :scale => 0
    t.decimal  "perform_type", :precision => 10, :scale => 0
    t.decimal  "pressure",     :precision => 10, :scale => 0
    t.decimal  "transformer",  :precision => 10, :scale => 0
  end

  create_table "hot_line_oil_filter_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hot_line_oil_filters", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "corrosion",            :precision => 10, :scale => 0
    t.decimal "pressure",             :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "ic_allcosts", :id => false, :force => true do |t|
    t.integer  "id"
    t.float    "oc1",        :limit => 24
    t.float    "oc2",        :limit => 24
    t.float    "oc3",        :limit => 24
    t.float    "oc4",        :limit => 24
    t.float    "oc5",        :limit => 24
    t.float    "oc6",        :limit => 24
    t.float    "oc7",        :limit => 24
    t.float    "oc8",        :limit => 24
    t.float    "oc9",        :limit => 24
    t.float    "oc10",       :limit => 24
    t.float    "x1",         :limit => 24
    t.float    "x2",         :limit => 24
    t.float    "x3",         :limit => 24
    t.float    "x4",         :limit => 24
    t.float    "x5",         :limit => 24
    t.float    "x6",         :limit => 24
    t.float    "x7",         :limit => 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ic_oil_balances", :id => false, :force => true do |t|
    t.integer  "id"
    t.datetime "Date"
    t.integer  "Quantity"
    t.integer  "Price"
    t.datetime "Recv_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "Quantitypass"
  end

  create_table "ic_oil_inits", :id => false, :force => true do |t|
    t.integer  "id"
    t.datetime "Date"
    t.integer  "InitQuantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "importance_indices", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "start"
    t.integer  "end"
    t.string   "importance"
    t.string   "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inspection", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "name"
    t.string  "perform_name"
    t.integer "wi"
  end

  create_table "inspection_detail", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "color"
    t.string  "description"
    t.integer "score"
    t.decimal "visual_inspection", :precision => 10, :scale => 0
  end

  create_table "insulating_oil_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insulating_oil_weights", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.string   "description"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insulating_oils", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ambient_temp",          :limit => 53
    t.float    "cf",                    :limit => 53
    t.float    "current_avg_maintank",  :limit => 53
    t.float    "current_avg_oltc",      :limit => 53
    t.float    "gap_distance_maintank", :limit => 53
    t.float    "gap_distance_oltc",     :limit => 53
    t.float    "humidity",              :limit => 53
    t.float    "oil_temp",              :limit => 53
    t.string   "remark_maintank"
    t.string   "remark_oltc"
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "watt_avg_maintank",     :limit => 53
    t.float    "watt_avg_oltc",         :limit => 53
    t.string   "work_order"
    t.float    "xi1_maintank",          :limit => 53
    t.float    "xi1_oltc",              :limit => 53
    t.float    "xi2_maintank",          :limit => 53
    t.float    "xi2_oltc",              :limit => 53
    t.float    "xi3_maintank",          :limit => 53
    t.float    "xi3_oltc",              :limit => 53
    t.float    "xi4_maintank",          :limit => 53
    t.float    "xi4_oltc",              :limit => 53
    t.float    "xi5_maintank",          :limit => 53
    t.float    "xi5_oltc",              :limit => 53
    t.decimal  "perform_type",                        :precision => 10, :scale => 0
    t.string   "test_type"
    t.integer  "transformer_id"
    t.integer  "test_kv_maintank"
    t.integer  "test_kv_oltc"
  end

  create_table "lightning_arrester", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "ground_connector_hv", :precision => 10, :scale => 0
    t.decimal  "ground_connector_lv", :precision => 10, :scale => 0
    t.decimal  "ground_connector_tv", :precision => 10, :scale => 0
    t.decimal  "leakage_current_hv",  :precision => 10, :scale => 0
    t.decimal  "leakage_current_lv",  :precision => 10, :scale => 0
    t.decimal  "leakage_current_tv",  :precision => 10, :scale => 0
    t.decimal  "perform_type",        :precision => 10, :scale => 0
    t.decimal  "pocelain_clean_hv",   :precision => 10, :scale => 0
    t.decimal  "pocelain_clean_lv",   :precision => 10, :scale => 0
    t.decimal  "pocelain_clean_tv",   :precision => 10, :scale => 0
    t.decimal  "pocelain_status_hv",  :precision => 10, :scale => 0
    t.decimal  "pocelain_status_lv",  :precision => 10, :scale => 0
    t.decimal  "pocelain_status_tv",  :precision => 10, :scale => 0
    t.decimal  "transformer",         :precision => 10, :scale => 0
  end

  create_table "load_history", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.integer  "n0"
    t.integer  "n1"
    t.integer  "n2"
    t.integer  "n3"
    t.integer  "n4"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "perform_type", :precision => 10, :scale => 0
    t.decimal  "transformer",  :precision => 10, :scale => 0
  end

  create_table "load_history_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "load_pattern_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "start"
    t.integer  "end"
    t.integer  "score"
    t.string   "score_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "load_pattern_per_years", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "lteq_0_pt_6"
    t.integer  "gt_0_pt_6_and_lteq_1"
    t.integer  "gt_1_and_lteq_1_pt_2"
    t.integer  "gt_1_pt_2_and_lteq_1_pt_5"
    t.integer  "gt_1_pt_5"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "transformer_information_id"
    t.integer  "load_pattern_factor_id"
  end

  create_table "main_tank_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_tanks", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "corrosion",            :precision => 10, :scale => 0
    t.decimal "oil_fail",             :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "maintank", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "corrosion",    :precision => 10, :scale => 0
    t.decimal  "oil_fail",     :precision => 10, :scale => 0
    t.decimal  "perform_type", :precision => 10, :scale => 0
    t.decimal  "transformer",  :precision => 10, :scale => 0
  end

  create_table "manufacturer", :id => false, :force => true do |t|
    t.integer "id"
    t.string  "address"
    t.integer "version"
    t.string  "name"
    t.string  "tel_no"
  end

  create_table "manufacturer_arresters", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "manufacturer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturer_bushings", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "manufacturer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturer_oltcs", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "manufacturer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturer_txes", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "manufacturer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "address"
    t.integer  "version"
    t.string   "name"
    t.string   "tel_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "n1_criterias", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.integer  "score"
    t.string   "score_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ngr", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "base_status",      :precision => 10, :scale => 0
    t.decimal  "ground_connector", :precision => 10, :scale => 0
    t.decimal  "ngr_status",       :precision => 10, :scale => 0
    t.decimal  "perform_type",     :precision => 10, :scale => 0
    t.decimal  "pocelain_clean",   :precision => 10, :scale => 0
    t.decimal  "transformer",      :precision => 10, :scale => 0
  end

  create_table "ngr_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ngrs", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "base_status",          :precision => 10, :scale => 0
    t.decimal "ground_connector",     :precision => 10, :scale => 0
    t.decimal "ngr_status",           :precision => 10, :scale => 0
    t.decimal "pocelain_clean",       :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "oil_aging", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "ift",          :limit => 53
    t.float    "nn",           :limit => 53
    t.float    "pf100",        :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "perform_type",               :precision => 10, :scale => 0
    t.decimal  "transformer",                :precision => 10, :scale => 0
  end

  create_table "oil_calculates", :id => false, :force => true do |t|
    t.integer  "id"
    t.float    "Y1",         :limit => 24
    t.float    "Y2",         :limit => 24
    t.float    "Y3",         :limit => 24
    t.float    "Y4",         :limit => 24
    t.float    "Y5",         :limit => 24
    t.integer  "W"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oil_contamination_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oil_contaminations", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "color",          :limit => 53
    t.float    "ift",            :limit => 53
    t.float    "nn",             :limit => 53
    t.float    "pf100",          :limit => 53
    t.float    "pf20",           :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.integer  "water_content"
    t.string   "work_order"
    t.integer  "transformer_id"
    t.integer  "test_type"
  end

  create_table "oil_dga", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "c2h2",         :limit => 53
    t.float    "c2h4",         :limit => 53
    t.float    "c2h6",         :limit => 53
    t.float    "c3h6",         :limit => 53
    t.float    "c3h8",         :limit => 53
    t.float    "ch4",          :limit => 53
    t.float    "co",           :limit => 53
    t.float    "co2",          :limit => 53
    t.float    "h2",           :limit => 53
    t.float    "n2",           :limit => 53
    t.float    "o2",           :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "perform_type",               :precision => 10, :scale => 0
    t.decimal  "transformer",                :precision => 10, :scale => 0
  end

  create_table "oil_dgas", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "test_type"
    t.datetime "test_date"
    t.string   "work_order"
    t.integer  "co2"
    t.integer  "co2_score"
    t.integer  "co"
    t.integer  "co_score"
    t.integer  "h2"
    t.integer  "h2_score"
    t.integer  "ch4"
    t.integer  "ch4_score"
    t.integer  "c2h2"
    t.integer  "c2h2_score"
    t.integer  "c2h4"
    t.integer  "c2h4_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "c2h6"
    t.integer  "c2h6_score"
    t.integer  "transformer_id"
    t.integer  "c3h6"
    t.integer  "c3h8"
    t.integer  "o2"
    t.integer  "n2"
  end

  create_table "oil_qualities", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.integer  "u_start"
    t.integer  "u_end"
    t.float    "start",      :limit => 24
    t.float    "end",        :limit => 24
    t.integer  "score"
    t.integer  "weight"
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oil_quality_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oltc_compartment", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "corrosion",    :precision => 10, :scale => 0
    t.decimal  "oil_fail",     :precision => 10, :scale => 0
    t.decimal  "perform_type", :precision => 10, :scale => 0
    t.decimal  "transformer",  :precision => 10, :scale => 0
  end

  create_table "oltc_compartment_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oltc_compartments", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "corrosion",            :precision => 10, :scale => 0
    t.decimal "oil_fail",             :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "oltc_contact", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "moving_a",     :limit => 53
    t.float    "moving_b",     :limit => 53
    t.float    "moving_c",     :limit => 53
    t.float    "r1_a",         :limit => 53
    t.float    "r1_b",         :limit => 53
    t.float    "r1_c",         :limit => 53
    t.float    "r2_a",         :limit => 53
    t.float    "r2_b",         :limit => 53
    t.float    "r2_c",         :limit => 53
    t.float    "station_a",    :limit => 53
    t.float    "station_b",    :limit => 53
    t.float    "station_c",    :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "oltc_type",                  :precision => 10, :scale => 0
    t.decimal  "perform_type",               :precision => 10, :scale => 0
    t.decimal  "transformer",                :precision => 10, :scale => 0
  end

  create_table "oltc_control_cab", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "animal",           :precision => 10, :scale => 0
    t.decimal  "control_humidity", :precision => 10, :scale => 0
    t.decimal  "corrosion",        :precision => 10, :scale => 0
    t.decimal  "perform_type",     :precision => 10, :scale => 0
    t.decimal  "pragen",           :precision => 10, :scale => 0
    t.decimal  "transformer",      :precision => 10, :scale => 0
    t.decimal  "wiring_control",   :precision => 10, :scale => 0
  end

  create_table "oltc_control_cabinet_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oltc_control_cabinets", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "animal",               :precision => 10, :scale => 0
    t.decimal "control_humidity",     :precision => 10, :scale => 0
    t.decimal "corrosion",            :precision => 10, :scale => 0
    t.decimal "pragen",               :precision => 10, :scale => 0
    t.decimal "wiring_control",       :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "oltc_dga_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.string   "status"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oltc_dgas", :id => false, :force => true do |t|
    t.integer  "id"
    t.float    "c2h2",           :limit => 53
    t.float    "c2h4",           :limit => 53
    t.float    "c2h6",           :limit => 53
    t.float    "ch4",            :limit => 53
    t.float    "h2",             :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "oltc_type",                    :precision => 10, :scale => 0
    t.decimal  "transformer_id",               :precision => 10, :scale => 0
    t.float    "c3h6",           :limit => 53
    t.string   "status"
    t.string   "test_type"
  end

  create_table "oltc_dielectric_property_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oltc_model", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "description"
  end

  create_table "oltc_oil_contamination_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oltc_oil_contaminations", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "color",          :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.integer  "water_content"
    t.string   "work_order"
    t.decimal  "oltc_type",                    :precision => 10, :scale => 0
    t.integer  "transformer_id"
    t.integer  "test_type"
  end

  create_table "oltc_oil_qualities", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.integer  "u_start"
    t.integer  "u_end"
    t.float    "start",      :limit => 24
    t.float    "end",        :limit => 24
    t.integer  "score"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
  end

  create_table "oltc_oil_quality_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oltc_type", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "description"
  end

  create_table "overall_condition_weights", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.string   "text"
    t.string   "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perform_draft_result", :id => false, :force => true do |t|
    t.integer "id"
    t.float   "activehv",                   :limit => 53
    t.string  "activehvcolor"
    t.float   "activelv",                   :limit => 53
    t.string  "activelvcolor"
    t.float   "activetv",                   :limit => 53
    t.string  "activetvcolor"
    t.float   "activepart",                 :limit => 53
    t.string  "activepart_color"
    t.integer "version"
    t.float   "arresterhv",                 :limit => 53
    t.string  "arresterhvcolor"
    t.float   "arresterlv",                 :limit => 53
    t.string  "arresterlvcolor"
    t.float   "arrestertv",                 :limit => 53
    t.string  "arrestertvcolor"
    t.float   "bushinghv",                  :limit => 53
    t.string  "bushinghvcolor"
    t.float   "bushinglv",                  :limit => 53
    t.string  "bushinglvcolor"
    t.float   "bushingtv",                  :limit => 53
    t.string  "bushingtvcolor"
    t.float   "eleccor",                    :limit => 53
    t.string  "eleccor_color"
    t.float   "elecdcrhv1",                 :limit => 53
    t.string  "elecdcrhv1color"
    t.float   "elecdcrhv2",                 :limit => 53
    t.string  "elecdcrhv2color"
    t.float   "elecdcrlv1",                 :limit => 53
    t.string  "elecdcrlv1color"
    t.float   "elecdcrlv2",                 :limit => 53
    t.string  "elecdcrlv2color"
    t.float   "elecdcrtv1",                 :limit => 53
    t.string  "elecdcrtv1color"
    t.float   "elecdcrtv2",                 :limit => 53
    t.string  "elecdcrtv2color"
    t.float   "elecexchv1",                 :limit => 53
    t.string  "elecexchv1color"
    t.float   "elecexchv2",                 :limit => 53
    t.string  "elecexchv2color"
    t.float   "elecexclv1",                 :limit => 53
    t.string  "elecexclv1color"
    t.float   "elecexclv2",                 :limit => 53
    t.string  "elecexclv2color"
    t.float   "elecexctv",                  :limit => 53
    t.string  "elecexctvcolor"
    t.float   "elecimpsinglehl",            :limit => 53
    t.string  "elecimpsinglehlcolor"
    t.float   "elecimpsingleht",            :limit => 53
    t.string  "elecimpsinglehtcolor"
    t.float   "elecimpsinglelt",            :limit => 53
    t.string  "elecimpsingleltcolor"
    t.float   "elecimpthreehl",             :limit => 53
    t.string  "elecimpthreehlcolor"
    t.float   "elecimpthreeht",             :limit => 53
    t.string  "elecimpthreehtcolor"
    t.float   "elecimpthreelt",             :limit => 53
    t.string  "elecimpthreeltcolor"
    t.float   "elecinsautohv",              :limit => 53
    t.string  "elecinsautohvcolor"
    t.float   "elecinsautotv",              :limit => 53
    t.string  "elecinsautotvcolor"
    t.float   "elecinsthreehv",             :limit => 53
    t.string  "elecinsthreehvcolor"
    t.float   "elecinsthreelv",             :limit => 53
    t.string  "elecinsthreelvcolor"
    t.float   "elecinsthreetv",             :limit => 53
    t.string  "elecinsthreetvcolor"
    t.float   "elecinstwohv",               :limit => 53
    t.string  "elecinstwohvcolor"
    t.float   "elecinstwolv",               :limit => 53
    t.string  "elecinstwolvcolor"
    t.float   "elecrathl",                  :limit => 53
    t.string  "elecrathlcolor"
    t.float   "elecratht",                  :limit => 53
    t.string  "elecrathtcolor"
    t.float   "elecratlt",                  :limit => 53
    t.string  "elecratltcolor"
    t.float   "oilaging",                   :limit => 53
    t.string  "oilaging_color"
    t.float   "oilcontamination",           :limit => 53
    t.string  "oilcontamination_color"
    t.float   "oildga",                     :limit => 53
    t.string  "oildga_color"
    t.float   "oilfuran",                   :limit => 53
    t.string  "oilfuran_color"
    t.float   "oilpart",                    :limit => 53
    t.string  "oilpart_color"
    t.float   "oltccontact",                :limit => 53
    t.string  "oltccontact_color"
    t.float   "oltcdga",                    :limit => 53
    t.string  "oltcdga_color"
    t.float   "oltcdielectric",             :limit => 53
    t.string  "oltcdielectric_color"
    t.float   "oltcoilcontamination",       :limit => 53
    t.string  "oltcoilcontamination_color"
    t.float   "oltcpart",                   :limit => 53
    t.string  "oltcpart_color"
    t.float   "overall",                    :limit => 53
    t.string  "overall_color"
    t.integer "quater"
    t.string  "recordyear"
    t.float   "vbushing",                   :limit => 53
    t.string  "vbushing_color"
    t.float   "vconservator",               :limit => 53
    t.string  "vconservator_color"
    t.float   "vgeneral",                   :limit => 53
    t.string  "vgeneral_color"
    t.float   "vhotline",                   :limit => 53
    t.string  "vhotline_color"
    t.float   "vlightning",                 :limit => 53
    t.string  "vlightning_color"
    t.float   "vloadhistory",               :limit => 53
    t.string  "vloadhistory_color"
    t.float   "vmaintank",                  :limit => 53
    t.string  "vmaintank_color"
    t.float   "vngr",                       :limit => 53
    t.string  "vngr_color"
    t.float   "voilquality",                :limit => 53
    t.string  "voilquality_color"
    t.float   "voltccompartment",           :limit => 53
    t.string  "voltccompartment_color"
    t.float   "voltccontrolcab",            :limit => 53
    t.string  "voltccontrolcab_color"
    t.float   "voltcdga",                   :limit => 53
    t.string  "voltcdga_color"
    t.float   "voltcoilquality",            :limit => 53
    t.string  "voltcoilquality_color"
    t.float   "vpowerfactor",               :limit => 53
    t.string  "vpowerfactor_color"
    t.float   "vradiatorcooling",           :limit => 53
    t.string  "vradiatorcooling_color"
    t.float   "vregulatingpt",              :limit => 53
    t.string  "vregulatingpt_color"
    t.float   "vthermoscan",                :limit => 53
    t.string  "vthermoscan_color"
    t.float   "vtranscontrolcab",           :limit => 53
    t.string  "vtranscontrolcab_color"
    t.decimal "transformer",                              :precision => 10, :scale => 0
  end

  create_table "perform_part", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "name"
    t.float   "wf",            :limit => 53
    t.decimal "perform_group",               :precision => 10, :scale => 0
  end

  create_table "perform_score", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "evaluation"
    t.string  "more_perform"
    t.float   "score1max",     :limit => 53
    t.string  "score1meaning"
    t.float   "score1min",     :limit => 53
    t.float   "score2max",     :limit => 53
    t.string  "score2meaning"
    t.float   "score2min",     :limit => 53
    t.float   "score3max",     :limit => 53
    t.string  "score3meaning"
    t.float   "score3min",     :limit => 53
    t.float   "score4max",     :limit => 53
    t.string  "score4meaning"
    t.float   "score4min",     :limit => 53
    t.float   "score5max",     :limit => 53
    t.string  "score5meaning"
    t.float   "score5min",     :limit => 53
    t.float   "score6max",     :limit => 53
    t.string  "score6meaning"
    t.float   "score6min",     :limit => 53
    t.string  "variable"
    t.float   "variable_max",  :limit => 53
    t.float   "variable_min",  :limit => 53
    t.integer "wi"
    t.decimal "perform_group",               :precision => 10, :scale => 0
    t.decimal "sub_group",                   :precision => 10, :scale => 0
  end

  create_table "perform_sub_group", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "color"
    t.integer "hi_factor"
    t.float   "lower_bound",   :limit => 53
    t.string  "meaning"
    t.string  "name"
    t.float   "upper_bound",   :limit => 53
    t.decimal "perform_group",               :precision => 10, :scale => 0
  end

  create_table "perform_type", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "description"
  end

  create_table "performance_group", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "color"
    t.string  "description"
    t.float   "lower_bound", :limit => 53
    t.string  "meaning"
    t.string  "name"
    t.float   "upper_bound", :limit => 53
  end

  create_table "person", :id => false, :force => true do |t|
    t.integer "id"
    t.string  "authority_enum"
    t.integer "version"
    t.string  "department"
    t.string  "description"
    t.string  "name"
    t.string  "password"
    t.string  "username"
  end

  create_table "pollutions", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
    t.string   "score_message"
  end

  create_table "posts", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "power_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.float    "start",      :limit => 24
    t.float    "end",        :limit => 24
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "power_stations", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.string   "fullName"
    t.string   "region"
    t.integer  "kv"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "power_usages", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "usage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "probability_of_force_outages", :id => false, :force => true do |t|
    t.integer  "id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
    t.string   "score_message"
    t.integer  "start"
    t.integer  "end"
  end

  create_table "public_images", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.integer  "score"
    t.string   "score_message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "radiator_cooling", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "animal",       :precision => 10, :scale => 0
    t.decimal  "corrosion",    :precision => 10, :scale => 0
    t.decimal  "noise_level",  :precision => 10, :scale => 0
    t.decimal  "oil_fail",     :precision => 10, :scale => 0
    t.decimal  "oil_pump",     :precision => 10, :scale => 0
    t.decimal  "perform_type", :precision => 10, :scale => 0
    t.decimal  "transformer",  :precision => 10, :scale => 0
  end

  create_table "radiator_cooling_system_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "radiator_cooling_systems", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "animal",               :precision => 10, :scale => 0
    t.decimal "corrosion",            :precision => 10, :scale => 0
    t.decimal "noise_level",          :precision => 10, :scale => 0
    t.decimal "oil_fail",             :precision => 10, :scale => 0
    t.decimal "oil_pump",             :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "regulating_pt_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regulating_pts", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "oil_color",            :precision => 10, :scale => 0
    t.decimal "oil_fail",             :precision => 10, :scale => 0
    t.decimal "oil_level",            :precision => 10, :scale => 0
    t.decimal "pocelain_clean",       :precision => 10, :scale => 0
    t.decimal "pocelain_status",      :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "regulatingpt", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "oil_color",       :precision => 10, :scale => 0
    t.decimal  "oil_fail",        :precision => 10, :scale => 0
    t.decimal  "oil_level",       :precision => 10, :scale => 0
    t.decimal  "perform_type",    :precision => 10, :scale => 0
    t.decimal  "pocelain_clean",  :precision => 10, :scale => 0
    t.decimal  "pocelain_status", :precision => 10, :scale => 0
    t.decimal  "transformer",     :precision => 10, :scale => 0
  end

  create_table "repair_informations", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "repair_age"
    t.integer  "pm"
    t.integer  "mc_avg"
    t.integer  "det_cost"
    t.string   "winding_type"
    t.integer  "winding_cost"
    t.string   "bushing_type"
    t.integer  "bushing_cost"
    t.string   "arrester_type"
    t.integer  "arrester_cost"
    t.string   "oltc_type"
    t.integer  "oltc_cost"
    t.string   "hotline_type"
    t.integer  "hotline_cost"
    t.integer  "cooling"
    t.integer  "overhaul"
    t.integer  "overhaul_and_refurbish"
    t.integer  "rep_rubber_bag"
    t.integer  "rep_bct"
    t.integer  "others"
    t.integer  "user_id"
    t.integer  "transformer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.datetime "down_date"
    t.string   "down_time"
    t.datetime "incident_date"
    t.integer  "oltc_count"
    t.string   "reporter"
    t.datetime "up_date"
    t.string   "up_time"
    t.string   "work_order"
    t.decimal  "ab_environment", :precision => 10, :scale => 0
    t.decimal  "damage_data",    :precision => 10, :scale => 0
    t.decimal  "environment",    :precision => 10, :scale => 0
    t.decimal  "equipment",      :precision => 10, :scale => 0
    t.decimal  "failure_mode",   :precision => 10, :scale => 0
    t.decimal  "maintenance",    :precision => 10, :scale => 0
    t.decimal  "real_cause",     :precision => 10, :scale => 0
    t.decimal  "station",        :precision => 10, :scale => 0
    t.decimal  "transformer",    :precision => 10, :scale => 0
  end

  create_table "risk_probabilities", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "start"
    t.integer  "end"
    t.string   "probability_of_failure"
    t.string   "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "risks", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "start"
    t.integer "end"
    t.string  "risk"
    t.string  "action"
  end

  create_table "social_aspects", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
    t.string   "score_message"
  end

  create_table "station", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "full_name"
    t.integer "kv"
    t.string  "name"
    t.string  "region"
  end

  create_table "stations", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "full_name"
    t.integer  "kv"
    t.string   "name"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sun_flower", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "owner"
  end

  create_table "surge_arrester_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surge_arresters", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "ground_connector_hv",  :precision => 10, :scale => 0
    t.decimal "ground_connector_lv",  :precision => 10, :scale => 0
    t.decimal "ground_connector_tv",  :precision => 10, :scale => 0
    t.decimal "porcelain_clean_hv",   :precision => 10, :scale => 0
    t.decimal "porcelain_clean_lv",   :precision => 10, :scale => 0
    t.decimal "porcelain_clean_tv",   :precision => 10, :scale => 0
    t.decimal "porcelain_status_hv",  :precision => 10, :scale => 0
    t.decimal "porcelain_status_lv",  :precision => 10, :scale => 0
    t.decimal "porcelain_status_tv",  :precision => 10, :scale => 0
    t.decimal "transformer",          :precision => 10, :scale => 0
    t.integer "surge_counter_hv"
    t.integer "surge_counter_lv"
    t.integer "surge_counter_tv"
    t.integer "visual_inspection_id"
  end

  create_table "system_fault_levels", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "start"
    t.integer  "end"
    t.integer  "score"
    t.string   "score_message"
    t.integer  "bus_voltage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_locations", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
    t.string   "score_message"
  end

  create_table "system_stabilities", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score"
    t.string   "score_message"
  end

  create_table "tarrester", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "currenth1",       :limit => 53
    t.float    "currenth2",       :limit => 53
    t.float    "currenth3",       :limit => 53
    t.float    "currentx1",       :limit => 53
    t.float    "currentx2",       :limit => 53
    t.float    "currentx3",       :limit => 53
    t.float    "currenty1",       :limit => 53
    t.float    "currenty2",       :limit => 53
    t.float    "currenty3",       :limit => 53
    t.float    "leakage_firsth1", :limit => 53
    t.float    "leakage_firsth2", :limit => 53
    t.float    "leakage_firsth3", :limit => 53
    t.float    "leakage_firstx1", :limit => 53
    t.float    "leakage_firstx2", :limit => 53
    t.float    "leakage_firstx3", :limit => 53
    t.float    "leakage_firsty1", :limit => 53
    t.float    "leakage_firsty2", :limit => 53
    t.float    "leakage_firsty3", :limit => 53
    t.float    "leakageh1",       :limit => 53
    t.float    "leakageh2",       :limit => 53
    t.float    "leakageh3",       :limit => 53
    t.float    "leakagex1",       :limit => 53
    t.float    "leakagex2",       :limit => 53
    t.float    "leakagex3",       :limit => 53
    t.float    "leakagey1",       :limit => 53
    t.float    "leakagey2",       :limit => 53
    t.float    "leakagey3",       :limit => 53
    t.float    "ohm_firsth1",     :limit => 53
    t.float    "ohm_firsth2",     :limit => 53
    t.float    "ohm_firsth3",     :limit => 53
    t.float    "ohm_firstx1",     :limit => 53
    t.float    "ohm_firstx2",     :limit => 53
    t.float    "ohm_firstx3",     :limit => 53
    t.float    "ohm_firsty1",     :limit => 53
    t.float    "ohm_firsty2",     :limit => 53
    t.float    "ohm_firsty3",     :limit => 53
    t.float    "ohmh1",           :limit => 53
    t.float    "ohmh2",           :limit => 53
    t.float    "ohmh3",           :limit => 53
    t.float    "ohmx1",           :limit => 53
    t.float    "ohmx2",           :limit => 53
    t.float    "ohmx3",           :limit => 53
    t.float    "ohmy1",           :limit => 53
    t.float    "ohmy2",           :limit => 53
    t.float    "ohmy3",           :limit => 53
    t.string   "serialh1"
    t.string   "serialh2"
    t.string   "serialh3"
    t.string   "serialx1"
    t.string   "serialx2"
    t.string   "serialx3"
    t.string   "serialy1"
    t.string   "serialy2"
    t.string   "serialy3"
    t.string   "test_by"
    t.datetime "test_date"
    t.integer  "test_kv"
    t.float    "watt_firsth1",    :limit => 53
    t.float    "watt_firsth2",    :limit => 53
    t.float    "watt_firsth3",    :limit => 53
    t.float    "watt_firstx1",    :limit => 53
    t.float    "watt_firstx2",    :limit => 53
    t.float    "watt_firstx3",    :limit => 53
    t.float    "watt_firsty1",    :limit => 53
    t.float    "watt_firsty2",    :limit => 53
    t.float    "watt_firsty3",    :limit => 53
    t.float    "watth1",          :limit => 53
    t.float    "watth2",          :limit => 53
    t.float    "watth3",          :limit => 53
    t.float    "wattx1",          :limit => 53
    t.float    "wattx2",          :limit => 53
    t.float    "wattx3",          :limit => 53
    t.float    "watty1",          :limit => 53
    t.float    "watty2",          :limit => 53
    t.float    "watty3",          :limit => 53
    t.string   "work_order"
    t.decimal  "perform_type",                  :precision => 10, :scale => 0
    t.decimal  "transformer",                   :precision => 10, :scale => 0
  end

  create_table "tbushing", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "capc1h0",      :limit => 53
    t.float    "capc1h1",      :limit => 53
    t.float    "capc1h2",      :limit => 53
    t.float    "capc1h3",      :limit => 53
    t.float    "capc1x0",      :limit => 53
    t.float    "capc1x1",      :limit => 53
    t.float    "capc1x2",      :limit => 53
    t.float    "capc1x3",      :limit => 53
    t.float    "capc1y1",      :limit => 53
    t.float    "capc1y2",      :limit => 53
    t.float    "capc1y3",      :limit => 53
    t.float    "capc2h0",      :limit => 53
    t.float    "capc2h1",      :limit => 53
    t.float    "capc2h2",      :limit => 53
    t.float    "capc2h3",      :limit => 53
    t.float    "capc2x0",      :limit => 53
    t.float    "capc2x1",      :limit => 53
    t.float    "capc2x2",      :limit => 53
    t.float    "capc2x3",      :limit => 53
    t.float    "capc2y1",      :limit => 53
    t.float    "capc2y2",      :limit => 53
    t.float    "capc2y3",      :limit => 53
    t.float    "corb",         :limit => 53
    t.float    "currentc1h0",  :limit => 53
    t.float    "currentc1h1",  :limit => 53
    t.float    "currentc1h2",  :limit => 53
    t.float    "currentc1h3",  :limit => 53
    t.float    "currentc1x0",  :limit => 53
    t.float    "currentc1x1",  :limit => 53
    t.float    "currentc1x2",  :limit => 53
    t.float    "currentc1x3",  :limit => 53
    t.float    "currentc1y1",  :limit => 53
    t.float    "currentc1y2",  :limit => 53
    t.float    "currentc1y3",  :limit => 53
    t.float    "currentc2h0",  :limit => 53
    t.float    "currentc2h1",  :limit => 53
    t.float    "currentc2h2",  :limit => 53
    t.float    "currentc2h3",  :limit => 53
    t.float    "currentc2x0",  :limit => 53
    t.float    "currentc2x1",  :limit => 53
    t.float    "currentc2x2",  :limit => 53
    t.float    "currentc2x3",  :limit => 53
    t.float    "currentc2y1",  :limit => 53
    t.float    "currentc2y2",  :limit => 53
    t.float    "currentc2y3",  :limit => 53
    t.string   "serialh0"
    t.string   "serialh1"
    t.string   "serialh2"
    t.string   "serialh3"
    t.string   "serialx0"
    t.string   "serialx1"
    t.string   "serialx2"
    t.string   "serialx3"
    t.string   "serialy1"
    t.string   "serialy2"
    t.string   "serialy3"
    t.string   "test_by"
    t.datetime "test_date"
    t.float    "test_kv",      :limit => 53
    t.float    "wattc1h0",     :limit => 53
    t.float    "wattc1h1",     :limit => 53
    t.float    "wattc1h2",     :limit => 53
    t.float    "wattc1h3",     :limit => 53
    t.float    "wattc1x0",     :limit => 53
    t.float    "wattc1x1",     :limit => 53
    t.float    "wattc1x2",     :limit => 53
    t.float    "wattc1x3",     :limit => 53
    t.float    "wattc1y1",     :limit => 53
    t.float    "wattc1y2",     :limit => 53
    t.float    "wattc1y3",     :limit => 53
    t.float    "wattc2h0",     :limit => 53
    t.float    "wattc2h1",     :limit => 53
    t.float    "wattc2h2",     :limit => 53
    t.float    "wattc2h3",     :limit => 53
    t.float    "wattc2x0",     :limit => 53
    t.float    "wattc2x1",     :limit => 53
    t.float    "wattc2x2",     :limit => 53
    t.float    "wattc2x3",     :limit => 53
    t.float    "wattc2y1",     :limit => 53
    t.float    "wattc2y2",     :limit => 53
    t.float    "wattc2y3",     :limit => 53
    t.string   "work_order"
    t.decimal  "perform_type",               :precision => 10, :scale => 0
    t.decimal  "transformer",                :precision => 10, :scale => 0
  end

  create_table "test_xes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thermo_scan", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.float    "delt",         :limit => 53
    t.float    "load",         :limit => 53
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "perform_type",               :precision => 10, :scale => 0
    t.decimal  "transformer",                :precision => 10, :scale => 0
  end

  create_table "thermo_scan_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "load_start"
    t.integer  "load_end"
    t.integer  "delta_start"
    t.integer  "delta_end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thermo_scans", :id => false, :force => true do |t|
    t.integer "id"
    t.float   "delt",                 :limit => 53
    t.float   "load",                 :limit => 53
    t.integer "visual_inspection_id"
  end

  create_table "tran_status", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "description"
  end

  create_table "trans_control_cab", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "animal",           :precision => 10, :scale => 0
    t.decimal  "control_humidity", :precision => 10, :scale => 0
    t.decimal  "corrosion",        :precision => 10, :scale => 0
    t.decimal  "perform_type",     :precision => 10, :scale => 0
    t.decimal  "pragen",           :precision => 10, :scale => 0
    t.decimal  "transformer",      :precision => 10, :scale => 0
    t.decimal  "wiring_control",   :precision => 10, :scale => 0
  end

  create_table "transformer", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "contract"
    t.string   "detail"
    t.string   "egatsn"
    t.datetime "first_energize"
    t.float    "hv",                  :limit => 53
    t.integer  "item"
    t.float    "lv",                  :limit => 53
    t.string   "manufacturingserial"
    t.float    "maxcapacity",         :limit => 53
    t.string   "old_egatsn"
    t.integer  "phase"
    t.string   "picture"
    t.string   "transformer_name"
    t.float    "tv",                  :limit => 53
    t.string   "vector_group"
    t.decimal  "first_substation",                  :precision => 10, :scale => 0
    t.decimal  "manufacturing",                     :precision => 10, :scale => 0
    t.decimal  "status",                            :precision => 10, :scale => 0
    t.decimal  "winding_type_id",                   :precision => 10, :scale => 0
    t.integer  "brand_id"
    t.string   "position"
    t.string   "oltc_type"
    t.string   "station"
    t.string   "txname"
    t.integer  "bushing_hv_manu"
    t.string   "bushing_hv_type"
    t.integer  "bushing_hv_year"
    t.string   "bushing_hv_h0"
    t.string   "bushing_hv_h1"
    t.string   "bushing_hv_h2"
    t.string   "bushing_hv_h3"
    t.integer  "bushing_lv_manu"
    t.string   "bushing_lv_type"
    t.integer  "bushing_lv_year"
    t.string   "bushing_lv_x0"
    t.string   "bushing_lv_x1"
    t.string   "bushing_lv_x2"
    t.string   "bushing_lv_x3"
    t.integer  "bushing_tv_manu"
    t.string   "bushing_tv_type"
    t.integer  "bushing_tv_year"
    t.string   "bushing_tv_y1"
    t.string   "bushing_tv_y2"
    t.string   "bushing_tv_y3"
    t.integer  "arrester_hv_manu"
    t.string   "arrester_hv_type"
    t.integer  "arrester_hv_year"
    t.string   "arrester_hv_h1"
    t.string   "arrester_hv_h2"
    t.string   "arrester_hv_h3"
    t.integer  "arrester_hv_gapless"
    t.integer  "arrester_lv_manu"
    t.string   "arrester_lv_type"
    t.integer  "arrester_lv_year"
    t.string   "arrester_lv_x1"
    t.string   "arrester_lv_x2"
    t.string   "arrester_lv_x3"
    t.integer  "arrester_lv_gapless"
    t.integer  "arrester_tv_manu"
    t.string   "arrester_tv_type"
    t.integer  "arrester_tv_year"
    t.string   "arrester_tv_y1"
    t.string   "arrester_tv_y2"
    t.string   "arrester_tv_y3"
    t.integer  "arrester_tv_gapless"
    t.integer  "oltc_year"
    t.integer  "oltc_manufacturer"
  end

  create_table "transformer_accessories", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "bushing_hv_manu"
    t.string   "bushing_hv_type"
    t.integer  "bushing_hv_year"
    t.string   "bushing_hv_h0"
    t.string   "bushing_hv_h1"
    t.string   "bushing_hv_h2"
    t.string   "bushing_hv_h3"
    t.integer  "bushing_lv_manu"
    t.string   "bushing_lv_type"
    t.integer  "bushing_lv_year"
    t.string   "bushing_lv_x0"
    t.string   "bushing_lv_x1"
    t.string   "bushing_lv_x2"
    t.string   "bushing_lv_x3"
    t.integer  "bushing_tv_manu"
    t.string   "bushing_tv_type"
    t.string   "bushing_tv_y1"
    t.string   "bushing_tv_y2"
    t.string   "bushing_tv_y3"
    t.integer  "arrester_hv_manu"
    t.string   "arrester_hv_type"
    t.integer  "arrester_hv_year"
    t.string   "arrester_hv_h1"
    t.string   "arrester_hv_h2"
    t.string   "arrester_hv_h3"
    t.integer  "arrester_hv_isgap"
    t.integer  "arrester_lv_manu"
    t.string   "arrester_lv_type"
    t.integer  "arrester_lv_year"
    t.string   "arrester_lv_x1"
    t.string   "arrester_lv_x2"
    t.string   "arrester_lv_x3"
    t.integer  "arrester_lv_isgap"
    t.integer  "arrester_tv_manu"
    t.string   "arrester_tv_type"
    t.integer  "arrester_tv_year"
    t.string   "arrester_tv_y1"
    t.string   "arrester_tv_y2"
    t.string   "arrester_tv_y3"
    t.integer  "arrester_tv_isgap"
    t.integer  "oltc_manu"
    t.string   "oltc_type"
    t.integer  "oltc_year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bushing_tv_year"
    t.string   "egatsn"
  end

  create_table "transformer_control_cabinet_factors", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "hi_factor"
    t.string   "condition"
    t.integer  "start"
    t.integer  "end"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transformer_control_cabinets", :id => false, :force => true do |t|
    t.integer "id"
    t.decimal "animal",               :precision => 10, :scale => 0
    t.decimal "control_humidity",     :precision => 10, :scale => 0
    t.decimal "corrosion",            :precision => 10, :scale => 0
    t.decimal "pragen",               :precision => 10, :scale => 0
    t.decimal "wiring_control",       :precision => 10, :scale => 0
    t.integer "visual_inspection_id"
  end

  create_table "transformer_history_move", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "move_by"
    t.datetime "move_date"
    t.string   "new_name"
    t.string   "old_name"
    t.decimal  "newstation",  :precision => 10, :scale => 0
    t.decimal  "oldstation",  :precision => 10, :scale => 0
    t.decimal  "transformer", :precision => 10, :scale => 0
  end

  create_table "transformer_informations", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "bus_voltage_hv_id"
    t.integer  "bus_voltage_lv_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "system_fault_level_hv",             :limit => 53
    t.float    "system_fault_level_lv",             :limit => 53
    t.integer  "probability_of_force_outage_id"
    t.integer  "social_aspect_id"
    t.integer  "system_location_id"
    t.integer  "application_use_id"
    t.integer  "system_stability_id"
    t.integer  "pollution_id"
    t.integer  "n1_criteria_id"
    t.integer  "public_image_id"
    t.integer  "system_fault_level_id"
    t.integer  "transformer_id"
    t.datetime "recorded_date"
    t.integer  "bus_voltage_id"
    t.float    "overall_condition",                 :limit => 53
    t.integer  "probability_of_force_outage_value"
    t.integer  "recent",                            :limit => 2
  end

  create_table "transformer_price_losses", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "transformer_price"
    t.integer  "noload_loss"
    t.integer  "loadloss"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "transformer_id"
    t.integer  "user_id"
  end

  create_table "transformer_transfers", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "egatsn"
    t.datetime "action_date"
    t.string   "user_op"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "station"
    t.string   "new_station"
    t.string   "old_txname"
    t.string   "new_txname"
  end

  create_table "tx_images", :id => false, :force => true do |t|
    t.integer  "id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "update_prices", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "Year"
    t.float    "Price",      :limit => 24
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
  end

  create_table "users", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "login"
    t.string   "password"
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "priv1"
    t.integer  "priv2"
    t.integer  "priv3"
    t.integer  "priv4"
    t.integer  "priv5"
    t.integer  "priv6"
    t.integer  "priv7"
    t.integer  "priv8"
    t.integer  "priv9"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visual_bushing", :id => false, :force => true do |t|
    t.integer  "id"
    t.integer  "version"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "work_order"
    t.decimal  "oil_color_hv",       :precision => 10, :scale => 0
    t.decimal  "oil_color_lv",       :precision => 10, :scale => 0
    t.decimal  "oil_color_tv",       :precision => 10, :scale => 0
    t.decimal  "oil_fail_hv",        :precision => 10, :scale => 0
    t.decimal  "oil_fail_lv",        :precision => 10, :scale => 0
    t.decimal  "oil_fail_tv",        :precision => 10, :scale => 0
    t.decimal  "oil_level_hv",       :precision => 10, :scale => 0
    t.decimal  "oil_level_lv",       :precision => 10, :scale => 0
    t.decimal  "oil_level_tv",       :precision => 10, :scale => 0
    t.decimal  "perform_type",       :precision => 10, :scale => 0
    t.decimal  "pocelain_clean_hv",  :precision => 10, :scale => 0
    t.decimal  "pocelain_clean_lv",  :precision => 10, :scale => 0
    t.decimal  "pocelain_clean_tv",  :precision => 10, :scale => 0
    t.decimal  "pocelain_status_hv", :precision => 10, :scale => 0
    t.decimal  "pocelain_status_lv", :precision => 10, :scale => 0
    t.decimal  "pocelain_status_tv", :precision => 10, :scale => 0
    t.decimal  "transformer",        :precision => 10, :scale => 0
  end

  create_table "visual_inspection_conditions", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "description"
    t.integer  "start"
    t.integer  "end"
    t.string   "condition"
    t.string   "name"
    t.string   "table_name"
    t.integer  "score"
    t.string   "score_message"
    t.integer  "weight"
    t.integer  "visual_inspection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visual_inspections", :id => false, :force => true do |t|
    t.integer  "id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "test_type"
    t.string   "test_by"
    t.datetime "test_date"
    t.string   "oltc_counter"
    t.string   "work_order"
    t.integer  "transformer_id"
  end

  create_table "web_link", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
  end

  create_table "web_tool", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
  end

  create_table "winding_type", :id => false, :force => true do |t|
    t.integer "id"
    t.integer "version"
    t.string  "description"
  end

  create_table "winding_types", :id => false, :force => true do |t|
    t.integer "id"
    t.string  "description"
  end

end
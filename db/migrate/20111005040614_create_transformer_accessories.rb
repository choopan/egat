class CreateTransformerAccessories < ActiveRecord::Migration
  def change
    create_table :transformer_accessories do |t|
      t.integer :bushing_hv_manu
      t.string :bushing_hv_type
      t.integer :bushing_hv_year
      t.string :bushing_hv_h0
      t.string :bushing_hv_h1
      t.string :bushing_hv_h2
      t.string :bushing_hv_h3
      t.integer :bushing_lv_manu
      t.string :bushing_lv_type
      t.integer :bushing_lv_year
      t.string :bushing_lv_x0
      t.string :bushing_lv_x1
      t.string :bushing_lv_x2
      t.string :bushing_lv_x3
      t.integer :bushing_tv_manu
      t.string :bushing_tv_type
      t.string :bushing_tv_y1
      t.string :bushing_tv_y2
      t.string :bushing_tv_y3
      t.integer :arrester_hv_manu
      t.string :arrester_hv_type
      t.integer :arrester_hv_year
      t.string :arrester_hv_h1
      t.string :arrester_hv_h2
      t.string :arrester_hv_h3
      t.integer :arrester_hv_isgap
      t.integer :arrester_lv_manu
      t.string :arrester_lv_type
      t.integer :arrester_lv_year
      t.string :arrester_lv_x1
      t.string :arrester_lv_x2
      t.string :arrester_lv_x3
      t.integer :arrester_lv_isgap
      t.integer :arrester_tv_manu
      t.string :arrester_tv_type
      t.integer :arrester_tv_year
      t.string :arrester_tv_y1
      t.string :arrester_tv_y2
      t.string :arrester_tv_y3
      t.integer :arrester_tv_isgap
      t.integer :oltc_manu
      t.string :oltc_type
      t.integer :oltc_year

      t.timestamps
    end
  end
end

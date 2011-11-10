class AddInfoToTransformer < ActiveRecord::Migration
  def change
  	add_column :transformer, :bushing_hv_manu, :integer
        add_column :transformer, :bushing_hv_type, :string
        add_column :transformer, :bushing_hv_year, :integer
        add_column :transformer, :bushing_hv_h0, :string
        add_column :transformer, :bushing_hv_h1, :string
        add_column :transformer, :bushing_hv_h2, :string
        add_column :transformer, :bushing_hv_h3, :string

  	add_column :transformer, :bushing_lv_manu, :integer
        add_column :transformer, :bushing_lv_type, :string
        add_column :transformer, :bushing_lv_year, :integer
        add_column :transformer, :bushing_lv_x0, :string
        add_column :transformer, :bushing_lv_x1, :string
        add_column :transformer, :bushing_lv_x2, :string
        add_column :transformer, :bushing_lv_x3, :string

  	add_column :transformer, :bushing_tv_manu, :integer
        add_column :transformer, :bushing_tv_type, :string
        add_column :transformer, :bushing_tv_year, :integer
        add_column :transformer, :bushing_tv_y1, :string
        add_column :transformer, :bushing_tv_y2, :string
        add_column :transformer, :bushing_tv_y3, :string

  	add_column :transformer, :arrester_hv_manu, :integer
        add_column :transformer, :arrester_hv_type, :string
        add_column :transformer, :arrester_hv_year, :integer
        add_column :transformer, :arrester_hv_h1, :string
        add_column :transformer, :arrester_hv_h2, :string
        add_column :transformer, :arrester_hv_h3, :string
        add_column :transformer, :arrester_hv_gapless, :integer

  	add_column :transformer, :arrester_lv_manu, :integer
        add_column :transformer, :arrester_lv_type, :string
        add_column :transformer, :arrester_lv_year, :integer
        add_column :transformer, :arrester_lv_x1, :string
        add_column :transformer, :arrester_lv_x2, :string
        add_column :transformer, :arrester_lv_x3, :string
        add_column :transformer, :arrester_lv_gapless, :integer

  	add_column :transformer, :arrester_tv_manu, :integer
        add_column :transformer, :arrester_tv_type, :string
        add_column :transformer, :arrester_tv_year, :integer
        add_column :transformer, :arrester_tv_y1, :string
        add_column :transformer, :arrester_tv_y2, :string
        add_column :transformer, :arrester_tv_y3, :string
        add_column :transformer, :arrester_tv_gapless, :integer

        add_column :transformer, :oltc_year, :integer
  end
end

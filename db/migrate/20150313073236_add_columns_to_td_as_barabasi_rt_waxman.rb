class AddColumnsToTdAsBarabasiRtWaxman < ActiveRecord::Migration
  def change
  	 add_column :brite_td_asbarabasi_rt_waxmen, :Name_router_bar,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :N_router_bar,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :HS_router_bar,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :LS_router_bar,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :NodePlacement_router_bar,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :m_router_bar,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :BWDist_router_bar,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :BWMin_router_bar,:integer
     add_column :brite_td_asbarabasi_rt_waxmen, :BWMax_router_bar,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :Name_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :N_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :HS_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :LS_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :NodePlacement_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :GrowthType_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :m_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :alpha_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :beta_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :BWDist_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :BWMin_router_wax,:integer
  	 add_column :brite_td_asbarabasi_rt_waxmen, :BWMax_router_wax,:integer
     add_column :fnss_simple_lines, :n,:integer
     add_column :fnss_simple_stars, :generator_form_id, :integer
     add_column :fnss_simple_stars, :n,:integer 
     add_column :fnss_simple_full_meshes, :n,:integer
  end
end

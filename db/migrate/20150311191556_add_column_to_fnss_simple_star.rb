class AddColumnToFnssSimpleStar < ActiveRecord::Migration
  def change
    add_reference :fnss_simple_full_meshes, :generator_form, index: true
    add_reference :fnss_datacenter_two_tiers, :generator_form, index: true
    add_reference :fnss_datacenter_three_tiers, :generator_form, index: true
    add_reference :fnss_datacenter_bcubes, :generator_form, index: true
    add_reference :fnss_datacenter_fattrees, :generator_form, index: true
    add_reference :brite_as_barabasis, :generator_form, index: true
    add_reference :brite_as_waxmen, :generator_form, index: true
    add_reference :brite_rt_barabasis, :generator_form, index: true
    add_reference :brite_rt_waxmen, :generator_form, index: true
    add_reference :brite_td_asbarabasi_rt_waxmen, :generator_form, index: true




 
  end
end

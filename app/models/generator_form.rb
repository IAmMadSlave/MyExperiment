class GeneratorForm < ActiveRecord::Base
  belongs_to :generator
  belongs_to :type
  belongs_to :user
  has_many :create_fnss_simple_rings
  has_many :fnss_simple_lines
  has_many :fnss_simple_stars
  has_many :fnss_simple_full_meshes
  has_many :fnss_simple_kary_trees
  has_many :fnss_simple_dumbbells
  has_many :fnss_datacenter_two_tiers
  has_many :fnss_datacenter_three_tiers
  has_many :fnss_datacenter_bcubes
  has_many :fnss_datacenter_fattrees
  has_many :brite_as_barabasis
  has_many :brite_as_waxmen
  has_many :brite_rt_barabasis
  has_many :brite_rt_waxmen
  has_many :brite_td_asbarabasi_rt_waxmen

  accepts_nested_attributes_for :fnss_simple_kary_trees
  def to_s
   "#{type}"
  end
end

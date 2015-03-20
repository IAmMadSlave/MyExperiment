class CreateFnssDatacenterTwoTiers < ActiveRecord::Migration
  def change
    create_table :fnss_datacenter_two_tiers do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.integer :n_coretwo_tier
      t.integer :n_edgetwo_tier
      t.integer :h_hoststwo_tier
      t.references :generator, index: true
      t.references :type, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

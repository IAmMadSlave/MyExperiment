class CreateFnssDatacenterThreeTiers < ActiveRecord::Migration
  def change
    create_table :fnss_datacenter_three_tiers do |t|
      t.integer :n_corethree_tier
      t.integer :n_aggregationthree_tier
      t.integer :n_edgesthree_tier
      t.integer :n_hoststhree_tier
      t.string :name
      t.text :description
      t.integer :status
      t.references :generator, index: true
      t.references :type, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

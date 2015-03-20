class CreateFnssDatacenterFattrees < ActiveRecord::Migration
  def change
    create_table :fnss_datacenter_fattrees do |t|
      t.integer :k_fattree
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

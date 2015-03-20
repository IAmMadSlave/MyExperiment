class CreateFnssDatacenterBcubes < ActiveRecord::Migration
  def change
    create_table :fnss_datacenter_bcubes do |t|
      t.integer :k_bcube
      t.integer :n_bcube
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

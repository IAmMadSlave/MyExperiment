class CreateBriteTdAsbarabasiRtWaxmen < ActiveRecord::Migration
  def change
    create_table :brite_td_asbarabasi_rt_waxmen do |t|
      t.integer :name
      t.integer :edgeconn
      t.integer :k
      t.integer :bwinter
      t.integer :bwintermin
      t.integer :bwintermax
      t.integer :bwintra
      t.integer :bwintramin
      t.integer :bwintramax
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

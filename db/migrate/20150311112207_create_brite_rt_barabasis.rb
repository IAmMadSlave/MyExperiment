class CreateBriteRtBarabasis < ActiveRecord::Migration
  def change
    create_table :brite_rt_barabasis do |t|
      t.integer :name
      t.integer :n
      t.integer :hs
      t.integer :ls
      t.integer :nodeplacement
      t.integer :m
      t.integer :bwdist
      t.integer :bwmin
      t.integer :bwmax
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

class CreateFnssSimpleKaryTrees < ActiveRecord::Migration
  def change
    create_table :fnss_simple_kary_trees do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.integer :k_branching_factor
      t.integer :h_height_of_tree
      t.references :generator, index: true
      t.references :type, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

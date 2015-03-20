class CreateFnssSimpleStars < ActiveRecord::Migration
  def change
    create_table :fnss_simple_stars do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.integer :star_node
      t.references :generator, index: true
      t.references :type, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

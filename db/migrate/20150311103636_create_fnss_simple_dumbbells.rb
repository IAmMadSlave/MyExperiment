class CreateFnssSimpleDumbbells < ActiveRecord::Migration
  def change
    create_table :fnss_simple_dumbbells do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.integer :mone_nodedumbell
      t.integer :mtwo_nodedumbell
      t.references :generator, index: true
      t.references :type, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

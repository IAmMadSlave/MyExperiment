class CreateCreateFnssSimpleRings < ActiveRecord::Migration
  def change
    create_table :create_fnss_simple_rings do |t|
      t.integer :n
      t.references :generator_form, index: true
      t.timestamps
    end
  end
end

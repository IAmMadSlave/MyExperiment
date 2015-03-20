class CreateGeneratorForms < ActiveRecord::Migration
  def change
    create_table :generator_forms do |t|
      t.integer :n
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

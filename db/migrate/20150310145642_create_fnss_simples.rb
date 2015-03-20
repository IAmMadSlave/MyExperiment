class CreateFnssSimples < ActiveRecord::Migration
  def change
    create_table :fnss_simples do |t|
      t.string :modelname
      t.integer :n
      t.string :tags

      t.timestamps
    end
  end
end

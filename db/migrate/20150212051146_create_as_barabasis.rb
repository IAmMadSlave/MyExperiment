class CreateAsBarabasis < ActiveRecord::Migration
  def change
    create_table :as_barabasis do |t|
      t.integer :name, :null => false
      t.integer :n, :null => false
      t.integer :hs, :null => false
      t.integer :ls, :null => false
      t.integer :nodeplacement, :null => false
      t.integer :m, :null => false
      t.integer :bwdist, :null => false
      t.integer :bwmin, :null => false
      t.integer :bwmax, :null => false

      t.timestamps
    end
  end
end

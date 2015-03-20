class CreateRocketfuels < ActiveRecord::Migration
  def change
    create_table :rocketfuels do |t|
      t.string :name
      t.string :xml

      t.timestamps
    end
  end
end

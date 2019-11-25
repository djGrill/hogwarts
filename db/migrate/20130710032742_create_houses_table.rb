class CreateHousesTable < ActiveRecord::Migration[4.2]
  def up
    create_table :houses do |t|
      t.string :name
    end
  end

  def down
    drop_table :houses
  end
end

class CreateStudentsTable < ActiveRecord::Migration[4.2]
  def up
    create_table :students do |t|
      t.string :name
      t.belongs_to :house
    end
  end

  def down
    drop_table :students
  end
end

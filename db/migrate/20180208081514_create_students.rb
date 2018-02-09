class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :studentname
      t.boolean :present
      t.integer :class_id
      t.timestamps
    end
  end
end

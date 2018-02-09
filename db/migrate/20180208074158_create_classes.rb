class CreateClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :classes do |t|
      t.string :classname
      t.integer :teacher_id
      t.timestamps
    end
  end
end

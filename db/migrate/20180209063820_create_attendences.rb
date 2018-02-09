class CreateAttendences < ActiveRecord::Migration[5.1]
  def change
    create_table :attendences do |t|
      t.integer :report_id
      t.integer :student_id
      t.boolean :present
    end
  end
end

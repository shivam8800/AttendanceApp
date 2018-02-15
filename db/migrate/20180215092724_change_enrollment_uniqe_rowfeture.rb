class ChangeEnrollmentUniqeRowfeture < ActiveRecord::Migration[5.1]
  def change
    add_index :enrollments, [:subject_id, :student_id], unique: true
  end
end

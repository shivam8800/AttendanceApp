class SomeChangesInStudentTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :present
    rename_column :students, :teacherclass_id, :subject_id
  end
end

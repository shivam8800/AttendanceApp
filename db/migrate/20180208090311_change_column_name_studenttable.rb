class ChangeColumnNameStudenttable < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :class_id, :teacherclass_id
  end
end

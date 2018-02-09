class ChangeTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :teacherclasses, :subjects
  end
end

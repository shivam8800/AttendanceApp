class ChangeTeachercolumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :teachers, :teachername, :name
  end
end

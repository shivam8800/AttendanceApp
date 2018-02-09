class RenameTablename < ActiveRecord::Migration[5.1]
  def change
    rename_table :classes, :teacherclasses
  end
end

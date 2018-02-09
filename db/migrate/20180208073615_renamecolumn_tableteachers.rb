class RenamecolumnTableteachers < ActiveRecord::Migration[5.1]
  def change
    rename_column :teachers, :techername, :teachername
  end
end

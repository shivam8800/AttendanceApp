class ChangeIn < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :studentname, :name
    rename_column :subjects, :classname, :name
  end
end

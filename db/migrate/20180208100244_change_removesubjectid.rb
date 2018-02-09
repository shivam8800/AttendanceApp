class ChangeRemovesubjectid < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :subject_id
  end
end

class CreateReport < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.date :date
      t.integer :subject_id
    end
  end
end

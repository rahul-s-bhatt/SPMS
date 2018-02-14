class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :year
      t.string :code
      t.integer :created_by
      t.integer :updated_by

      t.timestamps null: false
    end
  end
end

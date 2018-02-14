class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.text :title
      t.string :_type
      t.string :status
      t.integer :priority
      t.integer :assignee
      t.text :description
      t.integer :project_id
      t.integer :created_by
      t.integer :updated_by
      
      t.timestamps null: false
    end
  end
end

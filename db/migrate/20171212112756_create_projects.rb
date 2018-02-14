class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :key
      t.string :_type
      t.string :category
      t.text  :description
      t.date :start
      t.date :end
      t.string :year
      t.belongs_to :group, index: true
      t.belongs_to :subject, index: true
      t.integer :created_by
      t.integer :updated_by
      t.timestamps null: false
    end
  end
end

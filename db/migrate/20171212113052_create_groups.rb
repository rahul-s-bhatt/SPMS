class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :code
      t.string :criteria
      t.integer :created_by
      t.integer :updated_by
      t.timestamps null: false
    end
  end
end

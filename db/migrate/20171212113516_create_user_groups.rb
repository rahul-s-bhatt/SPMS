class CreateUserGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :user_groups do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :created_by
      t.integer :updated_by

      t.timestamps null: false
    end
  end
end

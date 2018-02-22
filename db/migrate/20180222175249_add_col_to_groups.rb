class AddColToGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :user_limit, :integer, default: 4
  end
end

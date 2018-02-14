class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :commentable, polymorphic: true
      t.integer :created_by
      t.integer :updated_by
      t.timestamps
    end
    add_index :comments, [:commentable_id, :commentable_type]
  end
end

class AddsImageUrls < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :image_url, :text
    add_column :groups, :image_url, :text
    add_column :users, :image_url, :text
  end
end

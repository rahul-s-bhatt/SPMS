class CreateRequriments < ActiveRecord::Migration[5.1]
  def change
    create_table :requriments do |t|
      t.text :front_end
      t.text :back_end
      t.string :type_of_model
      t.belongs_to :project, index: true
      t.integer :created_by
      t.integer :updated_by
      t.timestamps null: false
    end
  end
end

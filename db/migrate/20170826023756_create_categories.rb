class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :description
      t.string :User
      t.string :ID
      t.string :Display
      t.string :Name

      t.timestamps
    end
  end
end

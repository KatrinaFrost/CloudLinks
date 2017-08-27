class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :link_display_name
      t.string :display_description
      t.string :display_url
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end

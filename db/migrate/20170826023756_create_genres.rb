class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :description
      t.string :user
      t.string :display
      t.string :name
      t.timestamps
    end
  end
end

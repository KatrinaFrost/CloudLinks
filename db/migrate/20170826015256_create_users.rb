class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :profile
      t.string :pic
      t.string :email

      t.timestamps
    end
  end
end

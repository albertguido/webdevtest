class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :name
      t.string :phone
      t.string :gender, limit: 1
      t.text :address

      t.timestamps null: false
    end
  end
end

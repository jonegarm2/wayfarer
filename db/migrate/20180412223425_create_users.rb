class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :has_secure_password
      t.boolean :admin

      t.timestamps
    end
  end
end

class RemoveHasSecurePasswordFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :has_secure_password, :string
  end
end

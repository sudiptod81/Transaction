class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :remember token, :string
    add_index :users, :remember token
  end
end

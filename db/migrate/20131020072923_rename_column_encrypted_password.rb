class RenameColumnEncryptedPassword < ActiveRecord::Migration
  def change
  	rename_column :users, :encrypted_pass, :password
  end
end

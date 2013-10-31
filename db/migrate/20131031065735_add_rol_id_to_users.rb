class AddRolIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :rol_id, :integer
  	add_index :users, :rol_id
  end
end

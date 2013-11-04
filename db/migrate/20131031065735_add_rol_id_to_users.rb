class AddRolIdToUsers < ActiveRecord::Migration
  def change
  	#add_column :users, :rol_id, :integer
  	#add_index :users, :rol_id
  	add_reference :users, :rol, index: true
  end
end

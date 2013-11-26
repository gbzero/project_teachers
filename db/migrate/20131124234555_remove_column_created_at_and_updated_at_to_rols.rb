class RemoveColumnCreatedAtAndUpdatedAtToRols < ActiveRecord::Migration
  def change
  	remove_column :rols, :created_at
  	remove_column :rols, :updated_at
  end
end

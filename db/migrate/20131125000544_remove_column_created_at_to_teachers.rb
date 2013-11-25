class RemoveColumnCreatedAtToTeachers < ActiveRecord::Migration
  def change
  	remove_column :teachers, :created_at
  	remove_column :teachers, :updated_at
  end
end

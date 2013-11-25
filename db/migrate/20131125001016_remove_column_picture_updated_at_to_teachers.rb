class RemoveColumnPictureUpdatedAtToTeachers < ActiveRecord::Migration
  def change
  	remove_column :teachers, :picture_updated_at
  end
end

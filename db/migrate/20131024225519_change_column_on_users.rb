class ChangeColumnOnUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :course_id
  	add_reference :users, :major, index: true
  end
end

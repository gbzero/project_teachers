class ChangeColumnOnUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :course_id
  	add_column :users, :major_id, :integer, :index => true
  end
end

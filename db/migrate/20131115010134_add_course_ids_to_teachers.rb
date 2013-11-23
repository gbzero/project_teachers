class AddCourseIdsToTeachers < ActiveRecord::Migration
  def change
  	add_column :teachers, :course_ids, :integer 
  end
end

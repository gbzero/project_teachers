class AddColumnCourseIdToTeachers < ActiveRecord::Migration
  def change
  	add_reference :teachers, :course, index: true
  end
end

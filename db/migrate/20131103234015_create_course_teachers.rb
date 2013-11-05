class CreateCourseTeachers < ActiveRecord::Migration
  def change
    create_table :course_teachers, :id => false do |t|
    	t.references :course, index: true
    	t.references :teacher, index: true
    end
  end
end

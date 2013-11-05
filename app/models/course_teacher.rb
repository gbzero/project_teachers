class CourseTeacher < ActiveRecord::Base
	belongs_to :teacher # Foreign Key teacher_id
	belongs_to :course  # Foreign Key course_id
end

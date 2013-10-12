class Course < ActiveRecord::Base
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :majors
  has_many :comments
end

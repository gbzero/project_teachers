class Comment < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :course
  belongs_to :user
end

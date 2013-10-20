class Comment < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :course
  belongs_to :user

  validates :teacher_id, format: { with: /\A\d+\z/, message:'Maestro no valido'}
  validates :course_id, format: { with: /\A\d+\z/, message: 'Materia no valido'}
  validates :user_id, format: { with: /\A\d+\z/, message:'Nombre no valido'}
  validates :date_post, presence: true
  validates :content, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü]+\z/, message:'Nombre no valido'}
end

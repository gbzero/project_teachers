class Course < ActiveRecord::Base
  has_and_belongs_to_many :teachers
  has_and_belongs_to_many :majors
  has_many :comments
  belongs_to :major

  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú| |ü]+\z/, message:'Nombre no valido'}
  validates :semester, presence: true, format: { with: /\d+/, message:'Semestre no valido'}
  validates :major_id, format: { with: /\A\d+\z/, message:'Carrera no valida'}

end

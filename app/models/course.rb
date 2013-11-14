class Course < ActiveRecord::Base

  belongs_to :major
  has_many :comments
  has_and_belongs_to_many :teachers

  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Nombre no valido'}
  validates :semester, format: { with: /^\d$/, message:'Semestre no valido', :multiline => true}
  validates :major_id, format: { with: /\A\d+\z/, message:'Carrera no valida'}

end

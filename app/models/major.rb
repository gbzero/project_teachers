class Major < ActiveRecord::Base
  
  belongs_to :school
  has_many :courses

  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Nombre no valido'}
  validates :school_id, format: { with: /\A\d+\z/, message:'Escuela no valida'}
  
end

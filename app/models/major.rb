class Major < ActiveRecord::Base
  
  belongs_to :school
  
  has_and_belongs_to_many :courses

  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Nombre no valido'}
  
end

class School < ActiveRecord::Base
  
  has_many :users
  has_many :majors  
  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Nombre no valido'}

end

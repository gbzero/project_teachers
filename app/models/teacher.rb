class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_many :comments

  validates :name, length: { in: 5..25 }, format: { with: /\A[a-zA-Z|á|é|í|ó|ú| |ü]+\z/, message:'Nombre no valido'}
  validates :last_name, length: { in: 4..25 }, format: { with: /\A[a-zA-Z|á|é|í|ó|ú| |ü]+\z/, message:'Apellido paterno no valido'}
  validates :second_last_name, length: { in: 4..25}, format: { with: /\A[a-zA-Z|á|é|í|ó|ú| |ü]+\z/, message:'Apellido materno no valido'}

end

class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_many :comments

  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü]+\z/, message:'Nombre no valido'}

end

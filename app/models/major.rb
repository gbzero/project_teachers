class Major < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :users
  belongs_to :course
  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü]+\z/, message:'Nombre no valido'}
  
end

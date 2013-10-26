class Major < ActiveRecord::Base
  
  has_and_belongs_to_many :users
  belongs_to :course
  belongs_to :user

  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Nombre no valido'}
  
end

class Rol < ActiveRecord::Base
  
  has_many :users

  validates :name, format: { with: /\A[a-zA-Z]+\z/, message:'Nombre no valido'}

end
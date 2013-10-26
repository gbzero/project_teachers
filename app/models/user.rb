class User < ActiveRecord::Base
  has_and_belongs_to_many :majors
  has_many :comments
  belongs_to :major
  belongs_to :rol

  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Nombre no valido'}
  validates :last_name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Apellido paterno no valido'}
  validates :second_last_name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Apellido materno no valido'}
  validates :major_id, format: { with: /\A\d+\z/, message:'Carrera no valido'}
  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,5})\Z/i, message: 'E-mail no valido'}
  validates :password, format: { with: /\A[a-z|A-Z|0-9|-]{6,20}\z/x, message:'Contraseña no valida' }
  validates :nickname, length: { in: 4..15 }, uniqueness: true, format: { with: /\A[a-zA-Z|0-9|-]+\z/, message:'Mote no valido'}

  def full_name
    "#{name} #{last_name} #{second_last_name}"
  end

end
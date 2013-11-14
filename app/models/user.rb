class User < ActiveRecord::Base

  belongs_to :rol
  belongs_to :school
  #has_many :comments

  attr_accessor :password, :password_confirmation

  before_save :encrypt_password

  validates :password, confirmation: true, format: { with: /\A[a-z|A-Z|0-9|-]{6,20}\z/x, message:'Contraseña no valida' }
  validates :password_confirmation, presence: true
  validates :name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Nombre no valido'}
  validates :last_name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Apellido paterno no valido'}
  validates :second_last_name, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Apellido materno no valido'}
  validates :email, uniqueness: { message: 'Ese e-mail ya esta siendo utilizado' }, 
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,5})\Z/i, message: 'E-mail no valido'}
  validates :nickname, length: { in: 4..15, message: 'Mote fuera de rango' }, uniqueness: { message: 'Ese mote ya esta siendo utilizado'}, 
            format: { with: /\A[a-zA-Z|0-9|-]+\z/, message: 'Mote no valido'}
  validates :rol_id, format: { with: /\A\d+\z/, message:'Rol no valido'}
  validates :school_id, format: { with: /\A\d+\z/, message:'Escuela no valida'}

  def full_name
    "#{name} #{last_name} #{second_last_name}"
  end

  def encrypt_password
    if password == password_confirmation
      if password.present?
        self.password_salt = BCrypt::Engine.generate_salt
        self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      end
    end
  end

  def self.authenticate(nickname, password)
    user = User.find_by_nickname(nickname)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

end
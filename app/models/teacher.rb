class Teacher < ActiveRecord::Base

  has_many :comments
  
  #has_and_belongs_to_many :courses
  has_many :course_teachers
  has_many :courses, :through => :course_teachers

  validates :name, length: { in: 5..25 }, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Nombre no valido'}
  validates :last_name, length: { in: 4..25 }, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]+\z/, message:'Apellido paterno no valido'}
  validates :second_last_name, length: { in: 4..25}, format: { with: /\A[a-zA-Z|á|é|í|ó|ú|ü| |ñ]*\z/, message:'Apellido materno no valido'}

  has_attached_file :picture, :styles => { :mini => '128x128>', :thumb => '100x100>', :big => '500x500>' }

  def full_name
  	"#{name + ' ' + last_name + ' ' + second_last_name}"
  end
end

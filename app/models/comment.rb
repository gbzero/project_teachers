class Comment < ActiveRecord::Base
  
  belongs_to :teacher
  belongs_to :course
  belongs_to :user

  validates :teacher_id, format: { with: /\A\d+\z/, message:'Maestro no valido'}
  validates :course_id, format: { with: /\A\d+\z/, message: 'Materia no valido'}
  validates :user_id, format: { with: /\A\d+\z/, message:'Nombre no valido'}
  validates :date_post, presence: { message: 'La fecha no puede estar en blanco' }
  validates :content, format: { with: /\A[a-z|A-Z|0-;|,|.| |á|é|í|ó|ú|ü]{,255}\z/, message:'Comentario no valido' }

  def contenido
  	largo = self.content.length
	i = 0
	j = 100
	cad = ''
	while i <= largo 
		cad += "#{self.content[i..j]}\n"
		i = j+1
		j = i+100
	end 
	cad
  end
end
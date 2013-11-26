class Invitation < ActiveRecord::Base
  belongs_to :sender, :class_name => 'User'
has_one :recipient, :class_name => 'User'

validates :recipient_email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,5})\Z/i, message: 'E-mail invalido'}
validate :recipient_is_not_registered
validate :sender_has_invitations, :if => :sender

before_create :generate_token
before_create :decrement_sender_count, :if => :sender

private

def recipient_is_not_registered
  errors.add :recipient_email, 'Ya estaba registrado' if User.find_by_email(recipient_email)
end

def sender_has_invitations
  unless sender.invitation_limit > 0
    errors.add_to_base 'Ya no puedes mandar más invitaciones.'
  end
end

def generate_token
  self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
end

def decrement_sender_count
  sender.decrement! :invitation_limit
end
end

class Mailer < ActionMailer::Base
  default from: "joaquinlom2@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.invitation.subject
  #
  def invitation(invitation,sign_url)
  #subject    'Invitation'
  #recipients invitation.recipient_email
  #from       'foo@example.com'
  #body       :invitation => invitation, :signup_url => sign_url
  #invitation.update_attribute(:sent_at, Time.now)
    mail(to: invitation.recipient_email,
      subject:'Invitation',body: sign_url)
  end
end

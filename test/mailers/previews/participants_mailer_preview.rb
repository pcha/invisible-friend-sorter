# Preview all emails at http://localhost:3000/rails/mailers/participants_mailer
class ParticipantsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/participants_mailer/notify_friend
  def notify_friend
    ParticipantsMailer.notify_friend
  end

end

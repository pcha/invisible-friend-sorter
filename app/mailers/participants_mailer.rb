class ParticipantsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.participants_mailer.notify_friend.subject
  #
  def notify_friend
    puts params
    @greeting = "Hola #{params[:name]}, sos el amigo invisible de #{params[:friend_name]}. Buscá algo lindo para regalarle!"

    to_address = params[:email_address]
    puts "The mail will be sent to:"
    puts to_address
    mail to: to_address, subject: "Notificación de amigo asignado"
  end
end

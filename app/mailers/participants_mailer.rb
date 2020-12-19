class ParticipantsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.participants_mailer.notify_friend.subject
  #
  def notify_friend
    @greeting = "Hola #{params[:name]}, sos el amigo invisible de es #{params[:invisible_friend]}. Buscá algo lindo para regalarle!"

    mail to: params[:mail_address], subject: "Notificación de amigo asignado"
  end
end

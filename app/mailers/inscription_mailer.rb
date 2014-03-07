class InscriptionMailer < ActionMailer::Base
  default from: "web4beginners.team@gmail.com"

  def notification(participant)
    mail(to: participant.email, subject: "Bem-vindo ao Workshop Web4Beginners")
  end
end

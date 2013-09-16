class ZombieMailer < ActionMailer::Base
  default from: 'from@example.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.zombie_mailer.welcome_email.subject
  #
  def welcome_email(zombie)
    @zombie = zombie
    @greeting = zombie.name + ', welcome to zombie''s twitter'

    mail to: zombie.email, subject: 'TBD'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.zombie_mailer.new_follower_email.subject
  #
  def new_follower_email(zombie, follower_zombie)
    @zombie = zombie
    @follower_zombie = follower_zombie
    @greeting = zombie.name + ', you''re becoming popular!'

    mail to: zombie.email , subject: 'TBD'
  end
end

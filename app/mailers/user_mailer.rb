class UserMailer < ApplicationMailer
  TEMPLATE_ID = ENV.fetch('TEMPLATE_ID')
  SEND_EMAIL = ENV.fetch('SEND_EMAIL')
  SENDER = ENV.fetch('SENDER')

  def send_dynamic_email
    set_sender(SENDER)
    set_template_id(TEMPLATE_ID)
    dynamic_template_data(key1: 'asd changed')
    mail(to: SEND_EMAIL)
  end
end

class UserMailer < ApplicationMailer
  TEMPLATE_ID = ENV.fetch('TEMPLATE_ID')
  SEND_EMAIL = ENV.fetch('SEND_EMAIL')

  def send_dynamic_email
    set_sender('fake_email@bla.com')
    set_template_id(TEMPLATE_ID)
    dynamic_template_data(key1: 'asd changed')
    mail(to: SEND_EMAIL)
  end
end

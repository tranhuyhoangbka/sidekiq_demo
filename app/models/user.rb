class User < ActiveRecord::Base
  after_create :send_mail

  private
  def send_mail
    TestMailer.sidekiq_delay_for(10.minutes, :retry => false, :queue => "low").new_user id
  end
end

class TestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test_mailer.new_user.subject
  #
  def new_user user_id
    @user = User.find_by_id user_id

    mail to: "ditimmottinhyeu.nd@gmail.com", subject: "test"
  end
end

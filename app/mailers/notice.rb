class Notice < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice.create_user.subject
  #
  def create_user user_id
    @user = User.find_by_id user_id

    mail to: "ditimmottinhyeu.nd@gmail.com", subject: "having new member for app"
  end
end

require 'test_helper'

class NoticeTest < ActionMailer::TestCase
  test "create_user" do
    mail = Notice.create_user
    assert_equal "Create user", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

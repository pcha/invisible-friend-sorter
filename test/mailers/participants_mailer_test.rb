require 'test_helper'

class ParticipantsMailerTest < ActionMailer::TestCase
  test "notify_friend" do
    mail = ParticipantsMailer.notify_friend
    assert_equal "Notify friend", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

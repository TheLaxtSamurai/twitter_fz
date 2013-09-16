require 'test_helper'

class ZombieMailerTest < ActionMailer::TestCase
  test "welcome_email" do
    mail = ZombieMailer.welcome_email
    assert_equal "Welcome email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "new_follower_email" do
    mail = ZombieMailer.new_follower_email
    assert_equal "New follower email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

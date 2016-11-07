require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
      @user = User.create(username: "james123", email: "james123@example.com", password: "james123pass")
  end

  test "user_has_username" do
    #   @user.username = "ja"
      assert @user.valid?
    #   assert @user.username
    # assert_equal 9, @user.username.size
  end

  test "user_has_email" do

      assert @user.valid?
    # assert_equal 9, @user.username.size
  end

  test "user_has_password" do
    #   @user.password = "jajasss"
      assert @user.valid?
    # assert_equal 9, @user.username.size
  end

end

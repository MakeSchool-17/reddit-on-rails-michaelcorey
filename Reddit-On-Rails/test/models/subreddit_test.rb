require 'test_helper'

class SubredditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @user = User.create(username: "james123", email: "james123@example.com", password: "james123pass")
      @subreddit2 = Subreddit.create(title: "InitialSubreddit", user: @user)
  end

  test "subreddit_has_title" do
      @subreddit2.title = "testtest"
      assert @subreddit2.valid?
    #   @subreddit.valid?
  end

end

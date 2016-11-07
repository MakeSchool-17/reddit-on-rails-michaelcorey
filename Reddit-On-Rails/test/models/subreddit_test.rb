require 'test_helper'

class SubredditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @subreddit = Subreddit.create(title: "InitialSubreddit")
  end

  test "subreddit_has_title" do
      @subreddit.title = "testtest"
      assert @subreddit.valid?
    #   @subreddit.valid?
  end

end

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
      @user = User.create(username: "james123", email: "james123@example.com", password: "james123pass")
      @subreddit = Subreddit.create(title: "ThisSubreddit", user: @user)
      @post = Post.create(title: "My Post", content: "This post has content", user: @user, subreddit: @subreddit)
      @comment = Comment.create(content: "This is a comment", user: @user, post: @post)
  end

  test "user_has_username" do
    #   @user.username = "ja"
      assert   @user.username
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

  test "user_can_have_subreddits" do
    #   @user.password = "jajasss"

      assert_equal 1, @user.subreddits.size
      assert @user.valid?
    # assert_equal 9, @user.username.size
  end

  test "user_has_posts" do
    #   @user.password = "jajasss"
      assert_equal 1, @user.posts.size
      assert @user.valid?
    # assert_equal 9, @user.username.size
  end

  test "user_has_comments" do
    #   @user.password = "jajasss"
      assert_equal 1, @user.comments.size
      assert @user.valid?
    # assert_equal 9, @user.username.size
  end

  test "subreddit_has_posts" do
    #   @user.password = "jajasss"
      assert_equal 1, @subreddit.posts.size
      assert @user.valid?
    # assert_equal 9, @user.username.size
  end

  test "post_has_comments" do
    #   @user.password = "jajasss"
      assert_equal 1, @post.comments.size
      assert @user.valid?
    # assert_equal 9, @user.username.size
  end

end

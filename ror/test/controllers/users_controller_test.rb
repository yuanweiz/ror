require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
    include SessionsHelper
  setup do
      @user =  User.first #users(:one)
      #log_in @user
  end

  test "should not create without password" do
      before=User.count
      post users_url, params: { user: { ucity: @user.ucity, uemail: @user.uemail, uname: @user.uname } }
      assert_equal User.count, before
    #assert_redirected_to user_url(User.last)
  end

  test "should not get following" do
      get following_user_path(@user)
      assert_redirected_to '/login'
  end

  test "should not get followers" do
      get followers_user_path(@user)
      assert_redirected_to '/login'
  end
  test "should get favorite artists" do
      get favorite_artists_user_path(@user)
      assert_response :success
  end

  test "should get play history" do
      get play_history_user_path(@user)
      assert_response :success
  end

end

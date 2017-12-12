require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
      @user =  User.first #users(:one)
  end

  test "should not create without password" do
      before=User.count
      post users_url, params: { user: { ucity: @user.ucity, uemail: @user.uemail, uname: @user.uname } }
      assert_equal User.count, before
    #assert_redirected_to user_url(User.last)
  end

  test "should get following" do
      get following_user_path(@user)
      assert_response :success
  end

  test "should get followers" do
      get followers_user_path(@user)
      assert_response :success
  end
  test "should get favorite artists" do
      get favorite_artists_user_path(@user)
      assert_response :success
  end
end

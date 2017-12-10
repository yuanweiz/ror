require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get '/login' #sessions_new_url
    assert_response :success
  end

  test "login and redirect" do
      post '/login', params: {session: {login: 'u1', password: '123456' }}
      assert_redirected_to '/users/1'
  end
  test "should not login" do
      post '/login', params: {session: {login: '', password: '' }}
      assert_response :success #FIXME: this is a really bad test
  end
end

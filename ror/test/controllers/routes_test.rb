require 'test_helper'

class RoutingTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get '/'
    assert_response :success
  end
  test 'should get signup' do
      get '/signup'
      assert_response :success
  end
end

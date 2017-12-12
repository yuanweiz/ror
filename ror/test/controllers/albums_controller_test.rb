require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
      @album =  Album.first #users(:one)
  end

  test "get albums" do
      get album_path(@album)
      assert_response :success
  end
end

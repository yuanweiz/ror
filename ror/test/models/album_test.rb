require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
    setup do
        @a = Album.first
    end
    test 'has many tracks' do
        assert !@a.tracks.nil?
    end
  # test "the truth" do
  #   assert true
  # end
end

require 'test_helper'

class AlbumTrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    test 'belongs to' do
        albumtrack = AlbumTrack.first
        assert !albumtrack.album.nil?, 'belongs to album'
        assert !albumtrack.track.nil?, 'belongs to track'
    end
end

require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
    test 'belongs to' do
        l = Playlist.first
        assert (l.respond_to? :user), 'should have a user'
        assert !l.user.nil?, 'user should be non-null'
    end

    test 'has many' do
        l = Playlist.first
        assert (l.respond_to? :tracks)
        assert !l.tracks.nil?
    end
  # test "the truth" do
  #   assert true
  # end
end

require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test 'has many liked_artists' do
        assert !User.new.favorite_artists.nil?
    end

    test 'has many followers' do
        assert !User.new.followers.nil?
    end

    test 'has many followees' do
        assert !User.new.followees.nil?
    end

    test 'has many playlists' do
        assert !User.new.playlists.nil?
    end
  # test "the truth" do
  #   assert true
  # end
end

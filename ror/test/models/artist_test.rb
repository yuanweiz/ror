require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
    test 'has many tracks' do
        assert !Artist.new.tracks.nil?
    end
  # test "the truth" do
  #   assert true
  # end
end

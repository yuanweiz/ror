require 'test_helper'

class TrackTest < ActiveSupport::TestCase
   test "belongs to many albums" do
       assert !Track.new.albums.nil?
   end
end

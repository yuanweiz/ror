class PlaylistTrack < ApplicationRecord
    belongs_to :playlist, foreign_key: 'lid'
    belongs_to :track, foreign_key: 'tid'
end

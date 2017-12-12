class Playlist < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'uid'
    has_many :playlist_track_relations, class_name: 'PlaylistTrack', foreign_key: 'lid'
    has_many :tracks, through: :playlist_track_relations, source: :track
end

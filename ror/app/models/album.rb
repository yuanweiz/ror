class Album < ApplicationRecord
    has_many :album_track_relations, class_name: 'AlbumTrack', foreign_key: 'albumid'
    has_many :tracks, through: :album_track_relations, source: :track
end

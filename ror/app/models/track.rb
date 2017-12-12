class Track < ApplicationRecord
    has_many :album_relations, class_name: 'AlbumTrack', foreign_key: 'tid'

    belongs_to :artist, class_name: 'Artist', foreign_key: 'aid'
end

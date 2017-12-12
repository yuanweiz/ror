class AlbumTrack < ApplicationRecord
    #self.table_name = 'albumtrack'
    belongs_to :album, class_name: 'Album', foreign_key: 'albumid'
    belongs_to :track, class_name: 'Track', foreign_key: 'tid'
end

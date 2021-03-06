class Artist < ApplicationRecord
    has_many :tracks, class_name: 'Track', foreign_key: 'aid'
    #has_many :genres, through: :tracks, source: :genre

    def genres
        tracks.select(:tgenre).distinct.map do |r| r.tgenre end
    end
end

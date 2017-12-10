class Track < ApplicationRecord
    belongs_to :artist, class_name: 'Artist', primary_key: 'aid'
end

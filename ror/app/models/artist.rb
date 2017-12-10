class Artist < ApplicationRecord
    has_many :tracks, class_name: 'Track', foreign_key: 'tid'
end

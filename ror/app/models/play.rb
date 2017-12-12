class Play < ApplicationRecord
    has_one :track, class_name: 'Track', foreign_key: 'tid'
end

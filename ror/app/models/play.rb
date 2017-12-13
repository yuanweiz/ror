class Play < ApplicationRecord
    has_one :track, class_name: 'Track', primary_key: 'tid', foreign_key: 'tid'
end

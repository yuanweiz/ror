class Like < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'uid'
    belongs_to :artist, class_name: 'Artist', foreign_key: 'aid'
end

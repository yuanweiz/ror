class Follow < ApplicationRecord
    belongs_to :follower_record , class_name: 'User', foreign_key: 'follower'  #primary_key is by-default User.primary_key
    belongs_to :followee_record , class_name: 'User', foreign_key: 'followee'
end

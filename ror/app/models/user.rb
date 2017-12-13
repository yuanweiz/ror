class User < ApplicationRecord
    validates :uname, presence: true
    validates :uemail, presence: true
    validates :ulogin, presence: true
    validates :upassword, presence: true
    validates :ucity, presence: true

    # intermediate relations, not suggested to use them
    has_many :likes, dependent: :destroy, foreign_key: 'uid'
    has_many :following_relations, class_name: 'Follow', foreign_key: 'follower' #primary key is by default User#primary_key
    has_many :followed_by_relations, class_name: 'Follow', foreign_key: 'followee' #primary key is by default User#primary_key

    #use these
    has_many :favorite_artists, through: :likes, source: :artist
    has_many :playlists, dependent: :destroy, foreign_key: 'uid'
    has_many :followers, through: :followed_by_relations, source: :follower_record
    has_many :followees, through: :following_relations, source: :followee_record
    has_many :play_relations, dependent: :destroy, class_name: 'Play', foreign_key: 'uid'

    def play_history
        self.play_relations.map{ |p| { ts: p.ts, track: p.track }}
    end

    def public_playlists
        playlists.where( lpublic: true )
    end

    def likes?(artist)
        !favorite_artists.find_by( aid: artist.aid).nil?
    end

    def likes!(artist)
        favorite_artists << artist
    end

    def unlikes!(artist)
        favorite_artists.delete(artist)
    end
end

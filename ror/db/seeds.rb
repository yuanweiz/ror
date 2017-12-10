# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class SeedData
    require 'bcrypt'
    def self.cipher_text
        BCrypt::Password.create('123456').to_s
    end
users = User.create( [ { uname: "Si Li", uemail: 'sili@nyu.edu', ucity: 'New York', ulogin: 'u1', upassword: cipher_text},
                     { uname: "Wu Wang", uemail: 'wuwang@nyu.edu', ucity: 'Washington', ulogin:'u2', upassword: cipher_text},
                     { uname: "Liu Zhao", uemail: 'liuzhao@nyu.edu', ucity: 'New Jersey', ulogin:'u3',  upassword: cipher_text},
                     { uname: "Sicong Wang", uemail: 'scwang@nyu.edu', ucity: 'Beijing',ulogin:'u4', upassword: cipher_text},
                     { uname: "Kaihua Zhao", uemail: 'khzhao@nyu.edu', ucity: 'Beijing',ulogin:'u5', upassword: cipher_text} ] )

artists = Artist.create([
    {aname: "Michael Jackson"},
    {aname: "Kaleo" },
    {aname: "The Beatles" },
    {aname: "Noname"},      #these dudes have 
    {aname: "Another Noname"}, # no albums
    {aname: "Alice"},  
    {aname: "Bob"}  
])

tracks = Track.create ([
                {ttitle: "Got to Be There", tgenre: "pop", aid: 1},         #1
                {ttitle: "In Our Small Way", tgenre: "pop", aid: 1},        #2
                {ttitle: "Wings of My Love", tgenre: "pop", aid: 1},        #3
                {ttitle: "Way Down We Go", tgenre: "rock", aid: 2},         #4
                {ttitle: "No Good", tgenre: "rock", aid: 2},                #5
                {ttitle: "Broken Bones", tgenre: "pop", aid: 2},            #6
                {ttitle: "Drive My Car", tgenre: "rock", aid: 3},           #7
                {ttitle: "Norwegian Wood", tgenre: "rock", aid: 3},         #8
                {ttitle: "Come Together", tgenre: "rock", aid: 3},          #9
                {ttitle: "Songs With Same Name", tgenre:"jazz", aid: 6},    #10
                {ttitle: "Songs With Same Name", tgenre:"pop", aid: 7}      #11
                ])

albums = Album.create ([
    {atitle: "Got to Be There", adate: "1972/01/24"},       #1
    {atitle: "A/B", adate: "2016/06/10"},                   #2
    {atitle: "Kaleo", adate: "2013/01/01"},                 #3
    {atitle: "Rubber Soul", adate: "1965/12/03"},           #4
])

albumtracks = AlbumTrack.create([
    {albumid: 1, tid: 1},
    {albumid: 1, tid: 2},
    {albumid: 1, tid: 3},
    {albumid: 2, tid: 4},
    {albumid: 2, tid: 5},
    {albumid: 3, tid: 6},
    {albumid: 4, tid: 7},
    {albumid: 4, tid: 8},
    {albumid: 4, tid: 9},
])

playlists = Playlist.create([
    {ltitle: "MyList", ldate: "2017/01/01", uid: 1, lpublic: true},       
    {ltitle: "Rock", ldate: "2017/01/01", uid: 2, lpublic: true},       
    {ltitle: "Pop", ldate: "2017/01/01", uid: 2, lpublic: true},       
    {ltitle: "Jazz", ldate: "2017/01/01", uid: 3, lpublic: true},       
])

playlistTracks= PlaylistTrack.create([
    {lid: 1, tid: 1},
    {lid: 1, tid: 2},
    {lid: 1, tid: 3},
    {lid: 1, tid: 4},
    {lid: 1, tid: 5},
    {lid: 2, tid: 4},
    {lid: 2, tid: 7},
    {lid: 2, tid: 8},
    {lid: 2, tid: 9},
    {lid: 3, tid: 1},
    {lid: 3, tid: 2},
    {lid: 3, tid: 3},
    {lid: 3, tid: 5},
    {lid: 4, tid: 10},
])

plays=Play.create([
    {uid: 1, tid: 1, ts:"2017/01/01" },
    {uid: 1, tid: 1, ts:"2017/01/01" },
    {uid: 1, tid: 2, ts:"2017/01/01" },
    {uid: 1, tid: 3, ts:"2017/01/01" },
    {uid: 1, tid: 7, ts:"2017/01/01" },
    {uid: 1, tid: 7, ts:"2017/01/01" },
    {uid: 2, tid: 1, ts:"2017/01/01" },
    {uid: 2, tid: 2, ts:"2017/01/01" },
    {uid: 2, tid: 2, ts:"2017/01/01" },
    {uid: 2, tid: 4, ts:"2017/01/01" },
    {uid: 2, tid: 8, ts:"2017/01/01" },
    {uid: 2, tid: 9, ts:"2017/01/01" },
    {uid: 3, tid: 2, ts:"2017/01/01" },
    {uid: 3, tid: 2, ts:"2017/01/01" },
    {uid: 3, tid: 3, ts:"2017/01/01" },
    {uid: 3, tid: 7, ts:"2017/01/01" },
    {uid: 3, tid: 9, ts:"2017/01/01" },
    {uid: 3, tid: 9, ts:"2017/01/01" },
])

follows=Follow.create([
    {follower: 1, followee: 2},
    {follower: 1, followee: 3},
    {follower: 1, followee: 4},
    {follower: 1, followee: 5},
    {follower: 2, followee: 3},
    {follower: 2, followee: 4},
    {follower: 3, followee: 1},
    {follower: 3, followee: 5},
])

likes = Like.create([
    {uid: 1, aid: 1, ts:"2017/01/01" },
    {uid: 1, aid: 2, ts:"2017/01/01" },
    {uid: 1, aid: 3, ts:"2017/01/01" },
    {uid: 1, aid: 7, ts:"2017/01/01" },
    {uid: 2, aid: 1, ts:"2017/01/01" },
    {uid: 2, aid: 2, ts:"2017/01/01" },
    {uid: 2, aid: 3, ts:"2017/01/01" },
    {uid: 2, aid: 4, ts:"2017/01/01" },
    {uid: 3, aid: 2, ts:"2017/01/01" },
    {uid: 3, aid: 3, ts:"2017/01/01" },
    {uid: 3, aid: 7, ts:"2017/01/01" },
    {uid: 4, aid: 2, ts:"2017/01/01" },
    {uid: 4, aid: 3, ts:"2017/01/01" },
    {uid: 4, aid: 4, ts:"2017/01/01" },
    {uid: 4, aid: 7, ts:"2017/01/01" },
])

rates=Rate.create([
    { uid: 1, tid: 1, score: 10, ts: "2017/11/01" },
])

end

class AddFk < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :track, :artist, column: :aid, primary_key: :aid
    add_foreign_key :albumtrack, :track, column: :tid, primary_key: :tid
    add_foreign_key :albumtrack, :album, column: :albumid, primary_key: :albumid
    add_foreign_key :playlist, :user, column: :uid, primary_key: :uid
    add_foreign_key :like, :user, column: :uid, primary_key: :uid
    add_foreign_key :like, :artist, column: :aid, primary_key: :aid
    add_foreign_key :play, :user, column: :uid, primary_key: :uid
    add_foreign_key :play, :track, column: :tid, primary_key: :tid
    add_foreign_key :follow, :user, column: :follower, primary_key: :uid
    add_foreign_key :follow, :user, column: :followee, primary_key: :uid
  end
end

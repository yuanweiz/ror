class CreatePlaylistTracks < ActiveRecord::Migration[5.0]
  def change
    create_table(:playlisttrack, id: false, primary_key: [ 'lid', 'tid' ]) do |t|
        t.integer :lid
        t.integer :tid
    end
    add_foreign_key :playlisttrack, :playlist, column: :lid, primary_key: :lid
    add_foreign_key :playlisttrack, :track, column: :tid, primary_key: :tid
  end
end

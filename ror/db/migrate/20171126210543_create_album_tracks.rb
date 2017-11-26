class CreateAlbumTracks < ActiveRecord::Migration[5.0]
  def change
    create_table(:albumtrack, id: false) do |t|
        t.integer :albumid
        t.integer :tid
    end
  end
end

class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
      create_table(:album, primary_key: 'albumid')do |t|
          t.string :atitle
          t.datetime :adate
      end
  end
end

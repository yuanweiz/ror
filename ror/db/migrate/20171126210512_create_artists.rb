class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table(:artist, primary_key: 'aid') do |t|
      t.string :aname
    end
  end
end

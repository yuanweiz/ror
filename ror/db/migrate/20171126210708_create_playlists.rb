class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlist, primary_key: 'lid' do |t|
      t.string :ltitle
      t.datetime :ldate
      t.boolean :lpublic
      t.integer :uid
    end
  end
end

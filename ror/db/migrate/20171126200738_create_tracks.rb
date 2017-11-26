class CreateTracks < ActiveRecord::Migration[5.0]
  def change

    create_table(:track, primary_key: 'tid')do |t|
      t.string :ttitle
      t.string :tgenre
      t.integer :aid
      #t.integer :aid , null: false, references: [ :artist, :aid]
    end
    #add_foreign_key :track, :artist, column: :aid, primary_key: :aid
  end
end

class CreatePlays < ActiveRecord::Migration[5.0]
  def change
    create_table :play do |t|
      t.integer :uid
      t.integer :tid
      t.datetime :ts
    end
  end
end

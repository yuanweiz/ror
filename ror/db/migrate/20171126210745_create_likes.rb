class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :like, id: false do |t|
      t.integer :uid
      t.integer :aid
      t.datetime :ts
    end
  end
end

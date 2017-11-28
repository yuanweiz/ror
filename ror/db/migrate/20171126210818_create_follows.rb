class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follow, id: false do |t|
      t.integer :follower
      t.integer :followee
      t.datetime :ts
    end
  end
end

class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rate, id: false do |t|
        t.integer :uid
        t.integer :tid
        t.datetime :ts
    end
  end
end

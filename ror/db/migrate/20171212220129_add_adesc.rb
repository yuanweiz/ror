class AddAdesc < ActiveRecord::Migration[5.0]
  def change
      add_column :artist ,:adesc, :string
  end
end

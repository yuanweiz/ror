class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table(:user, primary_key: 'uid') do |t|
      t.string :uname
      t.string :uemail
      t.string :ucity
    end
  end
end

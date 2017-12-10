class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table(:user, primary_key: 'uid') do |t|
      t.string :uname
      t.string :ulogin  #unique not null
      t.string :upassword
      t.string :uemail, 
      t.string :ucity
    end
    #add_index(:user, :ulogin, unique: true)
    #change_column_null(:user, :ulogin, false)
    #change_column_null(:user, :upassword, false)
    #change_column_null(:user, :uemail, false)
  end
end

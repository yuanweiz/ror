class NotNull < ActiveRecord::Migration[5.0]
  def change
    execute "ALTER TABLE \"user\" ALTER COLUMN ulogin set NOT NULL;"
    execute "ALTER TABLE \"user\" ALTER COLUMN upassword set NOT NULL;"
    execute "ALTER TABLE \"user\" ALTER COLUMN uemail set NOT NULL;"
  end
end

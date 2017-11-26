class AddPk < ActiveRecord::Migration[5.0]
  def change
    execute "ALTER TABLE \"albumtrack\" ADD PRIMARY KEY (albumid, tid);"
    execute "ALTER TABLE \"like\" ADD PRIMARY KEY (uid,aid);"
    execute "ALTER TABLE \"follow\" ADD PRIMARY KEY (follower,followee);"
    execute "ALTER TABLE \"rate\" ADD PRIMARY KEY (uid,tid);"
  end
end

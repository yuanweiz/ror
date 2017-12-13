class SearchView < ActiveRecord::Migration[5.0]
  def up
      execute 
      'CREATE VIEW searchview AS 
        SELECT "artist"."aname" AS "aname", 
                "artist"."adesc" AS "adesc", 
                "track"."ttitle" AS "ttitle", 
                "track"."tgenre" AS "tgenre" 
        FROM "artist" NATURAL JOIN "track";'
  end
  def down
      execute 'DROP VIEW searchview;'
  end
end

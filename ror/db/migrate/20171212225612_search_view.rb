class SearchView < ActiveRecord::Migration[5.0]
  def up
      execute <<-SQL
      CREATE VIEW searchview AS 
        SELECT "artist"."aname" AS "aname", 
                "artist"."aid" AS "aid", 
                "track"."tid" AS "tid", 
                "artist"."adesc" AS "adesc", 
                "track"."ttitle" AS "ttitle", 
                "track"."tgenre" AS "tgenre" 
        FROM "artist" NATURAL JOIN "track";
	SQL
  end
  def down
      execute 'DROP VIEW searchview;'
  end
end

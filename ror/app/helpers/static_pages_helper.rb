module StaticPagesHelper
  def search_result
      str = params['search']
      #TODO: dangerous! can cause SQL injection
      pattern = "("+str.split.map {|x| '%'+x+'%'}.join('|')+")"
      #Artist.where("aname SIMILAR TO #{pattern}")
      SearchView.where ["aname SIMILAR TO ? or adesc SIMILAR TO ? or ttitle SIMILAR TO ? or tgenre SIMILAR TO ? ", pattern,pattern,pattern,pattern]
  end
end

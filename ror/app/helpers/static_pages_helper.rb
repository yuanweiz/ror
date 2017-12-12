module StaticPagesHelper
  def search_result
      str = params['search']
      #TODO: dangerous! can cause SQL injection
      pattern = "'("+str.split.map {|x| '%'+x+'%'}.join('|')+")'"
      Artist.where("aname SIMILAR TO #{pattern}")
  end
end

[User, Album, AlbumTrack, Artist, Follow,Like,Play,Playlist, PlaylistTrack,Rate,Track].each do |klass|
    prefix=klass.name.downcase
    puts "klass=#{klass}#"
    file = File.open(prefix+".yml", "w")
    file_content=""
    idx=0
    klass.all.each do |record|
        s = "#{prefix}#{idx}:\n"
        idx = idx+1
        record.as_json.to_yaml.each_line do |line|
            if not /-.*/ =~ line then
                s = s+"   "+line
            end
        end
        file_content += s
    end
    file.write(file_content)
    puts "file_content=#{file_content}#"
    file.close
end

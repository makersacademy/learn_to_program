puts "What do you want to call your playlist?"
playlist_name = gets.chomp + '.m3u'

Dir.chdir '/Users/rls/projects/test1'

music_files = Dir['/Users/rls/Music/iTunes/iTunes Media/**/*.m4a']
playlist = music_files.shuffle
newlist = File.new("#{playlist_name}", "w")
music_files.each {|song|newlist.write(song + "\n")}
newlist.close
puts "You have created a new playlist called #{File.basename newlist}"

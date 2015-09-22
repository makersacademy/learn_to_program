Dir.chdir(#Enter path which locates the directory that contains the music files)

puts "What would you like to call this shuffled playlist?"
playlist_name = gets.chomp
playlist_name = "#{playlist_name}.m3u"

songs = Dir["*.mp3"].shuffle!

File.open playlist_name, "w" do |file| 
	songs.each{|song| file.write song + "\n"} 
end

puts "Done! Playlist: #{playlist_name} has now been created and contains #{songs.length} songs."
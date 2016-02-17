Dir.chdir "/Users/Rhiannon/Documents"
puts "What would you like to name this playlist of 5 random songs?"
playlist_name = gets.chomp
possibilities = Dir['/Users/Rhiannon/Music/iTunes/iTunes Media/Music/**/*.mp3']
playlist = possibilities.sample(5)
playlist_text = ""
playlist.each {|x| playlist_text << "#{x}\n"}
File.open "#{playlist_name}.m3u",'w' do |f| f.write "#{playlist_text}" end

songs = Dir['/home/valentina/Music/**/*.mp3']
puts "What name do you want to give to the playlist?"
playlist_name = "/home/valentina/Music/" + gets.chomp + ".m3u"
File.open playlist_name, 'w' do |f|
	songs.shuffle.each { |song_name|
		f.write song_name + "\n"
	}
end
puts "Done!"


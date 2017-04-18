songs = Dir['./Playlist/*.mp3']

File.open 'playlist.m3u', 'w' do |f|
	songNo = 1
	songs.shuffle.each do |song|
		f.write "#{songNo}:\t#{song.gsub('./Playlist/', '')} \n"
		songNo += 1
	end
end

puts 'Playlist written!'

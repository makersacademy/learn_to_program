songs = Dir['**/*.mp3'].shuffle

puts songs

File.open 'new_playlist.m3u', 'w' do |f|
	songs.each do |song|
		f.write song+"\n"
	end
end
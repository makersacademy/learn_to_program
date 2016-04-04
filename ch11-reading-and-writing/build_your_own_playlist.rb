def shuffle arr
	arr.sort_by{rand}
end

def playlist
	music_files = shuffle(Dir['**/*.mp3'])
	File.open 'playlist.m3u', 'w' do |f|
		music_files.each do |ogg|
			f.write ogg+"\n"
		end
	end
end
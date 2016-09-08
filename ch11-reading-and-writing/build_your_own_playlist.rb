def shuffle arr
	recursive_shuffle arr, []
end

def recursive_shuffle old_array, new_array
	until old_array.length < 1
		new_array << old_array.delete_at(rand(old_array.length))
	end
	new_array
end

# build playlist
	# search for mp3 files at specified address
	# using shuffle method to mix it up
mp3_files = shuffle(Dir['/Users/jen/Music/Albums/**/*.{MP3,mp3}'])

# write mp3 files to playlist.m3u
playlist = 'playlist.m3u'	
File.open playlist, 'w' do |f|
	f.write mp3_files
end


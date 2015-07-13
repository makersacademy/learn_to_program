def shuffle array
	x = 0
	track_number = 0
	number_songs = 0
	playlist = [ ]

	number_songs = array.length

	while x < number_songs
		track_number = rand(number_songs)
		if array[track_number] != ''
			playlist.push array[track_number]
			array[track_number] = ''
			x = x + 1
		else
		end
	end

	filename = 'Desktop/playlist.m3u'

	File.open filename, 'w' do |f|
		f.puts playlist
	end
end

tracks = Dir['Desktop/music/**/*.{ogg,mp3,m4a}']

shuffle tracks
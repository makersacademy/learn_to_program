require 'yaml'

def music_shuffle songs
	# counter 
	count = 0
	# variable to receive randomly generated track number
	track_number = 0
	# the number of songs that can be in the playlist
	number_songs = songs.length
	# empty array to receive list item
	playlist = []

	while count < number_songs
		# randomly generated track number
		songs.shuffle
		track_number = rand(number_songs)
		if !(playlist.include?(songs.values_at(track_number)))
			# add track at track number to playlist
			playlist << songs[track_number]
			# increase the counter
			count += 1
		end
	end

	shuffled = playlist.to_yaml
	filename = '/Users/shane/Desktop/listTest.m3u'

	File.open filename, 'w' do |track|
		track.write shuffled
	end 
end

# tracks_to_shuffle = Dir["/Users/shane/Desktop/alice/*.m4a"]

# music_shuffle tracks_to_shuffle
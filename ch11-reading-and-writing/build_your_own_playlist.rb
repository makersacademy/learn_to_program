require 'yaml'

def playlist array
	# counter 
	count = 0
	# variable to receive randomly generated track number
	track_number = 0
	# the number of songs that can be in the playlist
	number_songs = array.length
	# empty array to receive list item
	playlist = []

	while count < number_songs
		if array[track_number] != ""
			# randomly generated track number
			track_number = rand(number_songs)
			# add track at track number to playlist
			playlist << array[track_number]
			# delete the track record from the array
			# increase the counter
			count += 1
		end
	end

	shuffled = playlist.to_yaml
	filename = 'listTest.m3u'

	File.open filename, 'w' do |track|
		track.write shuffled
	end 
end

tracks_to_shuffle = Dir["/Users/shane/Desktop/alice/*.m4a"]
puts tracks_to_shuffle
playlist tracks_to_shuffle
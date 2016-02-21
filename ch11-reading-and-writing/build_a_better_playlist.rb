# THIS IS THE START OF MY CODE, WHICH DOES NOT PASS THE TEST. 
# require 'yaml'

# def music_shuffle songs
# 	# counter 
# 	count = 0
# 	# variable to receive randomly generated track number
# 	track_number = 0
# 	# the number of songs that can be in the playlist
# 	number_songs = songs.length
# 	# empty array to receive list item
# 	playlist = []

# 	while count < number_songs
# 		# randomly generated track number
# 		songs.shuffle
# 		track_number = rand(number_songs)
# 		if !(playlist.include?(songs.values_at(track_number)))
# 			# add track at track number to playlist
# 			playlist << songs[track_number]
# 			# increase the counter
# 			count += 1
# 		end
# 	end

# 	shuffled = playlist.to_yaml
# 	filename = '/Users/shane/Desktop/listTest.m3u'

# 	File.open filename, 'w' do |track|
# 		track.write shuffled
# 	end 
# end

# # tracks_to_shuffle = Dir["/Users/shane/Desktop/alice/*.m4a"]

# # music_shuffle tracks_to_shuffle

def music_shuffle filenames

filenames = filenames.sort
len = filenames.length

2.times do
	l_idx = 0 
	r_idx = len/2 
	shuf = []

	while shuf.length < len 
		if shuf.length%2 == 0
	        #  take card from right pile
	        shuf.push(filenames[r_idx])
	        r_idx = r_idx + 1
		else
	        #  take card from left pile
	        shuf.push(filenames[l_idx])
	        l_idx = l_idx + 1
		end 
	end
    filenames = shuf
end
#  And cut the deck.
arr = []
cut = rand(len) # index of card to cut at 
idx = 0
while idx < len 
	arr.push(filenames[(idx+cut)%len]) 
	idx = idx + 1
end
arr
end

songs = ['aa/bbb',   'aa/ccc',   'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))
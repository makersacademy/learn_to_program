# shuffle like card shuffling - shuffle the deck twice, and cut it once

def music_shuffle filenames

# firstly, shuffle the input, as we don't know how shuffled it might already be
 	filenames = filenames.sort
	len = filenames.length

# shuffle twice

	2.times do 
	
			l_idx = 0		# index of next card in left pile
			r_idx = len/2	# index of next card in right pile
			shuf = []

			# note: if there are an odd number of cards, then the right pile will be larger

			while shuf.length < len  # while length of shuf array is less than len
				if shuf.length%2 == 0	# if remainder of length of shuf array /2 is 0 (i.e. no. of cards is even)
					# take card from right pile (adds the filename to shuf array)
					shuf.push(filenames[r_idx])
					r_idx = r_idx + 1
				else
					#take card from left pile
					shuf.push(filenames[r_idx])
					l_idx = l_idx + 1
				end
		end	

		filenames = shuf

	end
	# cut the deck
	arr = []
	cut = rand(len) # index of card to cut at
	idx = 0

	while idx < len
		arr.push(filenames[(idx+cut)%len])
		idx = idx + 1
	end

	arr

end





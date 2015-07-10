def music_shuffle filenames
	
	filenames = filenames.sort
	len = filenames.length

	2.times do

		l = 0  
		r = len/2 
		shuf = []

		while shuf.length < len 
			if shuf.length % 2 == 0

			shuf.push( filenames[r] )
			r += 1
			else

			shuf.push(filenames[l])
			l += 1
		end 
	end
	
	filenames = shuf
	end

	arr = [ ]
	c = rand ( len )  
	i = 0

	while i < len 
		arr.push( filenames[ (i + c) % len ] )  
		i = i + 1
	end
	return arr
end

songs = ["blue", "dabu", "dee", "daboo", "die", "daba", "di", "da", "ba", "dye"]

puts music_shuffle songs

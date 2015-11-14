def music_shuffle filenames

	filenames = filenames.sort
	len = filenames.length

	2.times do
		left = 0
		right = len/2
		shuf = Array.new

		while shuf.length < len
			if shuf.length%2 == 0
				shuf.push(filnames[right])
				right += 1
			else
				shuf.push(filenames[left])
				left += 1
			end
		end
		filenames = shuf
	end

	arr = Array.new
	cut = rand(len)
	index 0

	while index < len
		arr.push(filenames[(index+cut)%len])
		index += 1
	end

	arr
end

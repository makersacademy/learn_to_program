def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

2.times do
	l_index = 0
	r_index = len/2
	shuffle = []

	while shuffle.length < len
		if shuffle.length % 2 == 0
			shuffle.push(filenames[r_index])
			r_index = r_index + 1
		else
			shuffle.push(filenames[l_index])
			l_index = l_index +1
		end
	end

	filenames = shuffle
end

array = []
cut = rand(len)
index = 0

while index < len
	array.push(filenames[(index+cut)%len])
	index = index +1
end

array

end

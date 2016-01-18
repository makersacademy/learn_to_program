def music_shuffle filenames
  filenames = filenames.sort
  length = filenames.length

  2.times do
  	l_idx = 0
  	r_idx = length / 2
  	shuffle = []

  	while shuffle.length < length
  		if shuffle.length%2 == 0
  			shuffle.push(filenames[r_idx])
  			r_idx = r_idx + 1
  		else
  			shuffle.push(filenames[l_idx])
  			l_idx = l_idx + 1
  		end
  	end
  	filenames = shuffle
  end
  arr = []
  cut = rand(length)
  idx = 0
  while idx < length
  	arr.push(filenames[(idx+cut)%length])
  	idx = idx + 1
  end
  arr
end

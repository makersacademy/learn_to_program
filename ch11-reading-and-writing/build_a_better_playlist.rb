def music_shuffle filenames
  filenames = filenames.sort
  long = filenames.length
  2.times do
  	l_idx = 0
  	r_idx = long/2
  	shuf = []
  	while shuf.length < long
  		if shuf.length%2 == 0
  		shuf.push(filenames[r_idx])
  		r_idx = r_idx + 1
  	else
  		shuf.push(filenames[l_idx])
  		l_idx = l_idx + 1
  		end
  	end
  	
  	filenames = shuf
  end
  
  arr = []
  cut = rand(long)
  idx = 0
  
  while idx < long
  	arr.push(filenames[(idx+cut)%long])
  	idx = idx + 1
  	end
  	
  arr
end

tunes = ['song 2', 'hello', 'ABC', 'many men', 'under']
puts (music_shuffle(tunes))

def music_shuffle(filenames)
	#example array will be: ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
  filenames = filenames.sort #this sorts the array = ["AAA/xxxx", "AAA/yyyy", "AAA/zzzz", "aa/bbb", "aa/ccc", "aa/ddd", "foo/bar"]
  len = filenames.length #create a new variable called len which stores the length of the array = 7

  2.times do #so that we can shuffle twice
  	l_idx = 0 #index of next card in left pile (0, 1, 2 are in the left pile)
  	r_idx = len/2 #index of next card in right pile r_idx = 7/2 = 3 (3, 4, 5, 6 are in the right pile)
  	shuf = [] #new variable shuf which equals to an empty array

  	while shuf.length < len #while the empty array is less than the filenames array
  		if shuf.length % 2 == 0 #has to be multiple of 2
  			shuf.push(filenames[r_idx]) #pushes one from the right pile into shuf
  			r_idx += 1 #right pile index increments by one each time
  		else #if not a multiple of 2
  			shuf.push(filenames[l_idx]) #pushes one from the left pile into shuf
  			l_idx += 1 #left pile index increments by one each time
  		end
  	end

  	filenames = shuf #the original array then becomes the new shuf array
  end
  #now we will cut the array
  arr = [] #create a new empty array
  cut = rand(len) #creates a random number index to cut the array at
  idx = 0 #current index

  while idx < len #while the current index is before the end of the filenames array
  	arr.push(filenames[(idx+cut)%len])
  	idx += 1
  end

  return arr
end
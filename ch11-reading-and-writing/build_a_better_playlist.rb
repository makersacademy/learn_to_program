#I did not understand this exersice, I used array.sample in my shuffle
#and it seemed to work fine, I did not have a problem, indicated in the book.
#I did not get what it means "mix them up good and proper"
#so read possible solutions. Only after reading the solutions I understood
#that filenames should be shuffled like playing cards.. 
#So took this method from the solutions. 
#And, of course, I understand how it works)

def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  2.times do 
  	l_idx = 0
  	r_idx = len/2
  	shuf = []

  	while shuf.length<len
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

  cut = rand(len)

  idx = 0

  while idx < len

  	arr.push(filenames[(idx+cut)%len])
  	idx = idx +1
  end

  arr

end



def music_shuffle filenames
  # doing this via the deck of cards split method

filenames = filenames.sort

 3.times do #repeat this 3 times. More times will increase the randomness and lessen the mix.
  	left = []
  	right = []
  	filenames.each do |x|
  		if rand(2).even?  #randomly assign each song to left or right array
  			left << x
  		else
  			right << x
  		end
  	filenames = left + right #combine the two arrays
  	end
  end
  filenames
end

#puts music_shuffle ['aa/bbb', 'aa/ccc', 'aa/ddd','AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
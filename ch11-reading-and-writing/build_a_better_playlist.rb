def music_shuffle2 filenames
  filenames = filenames.sort
  full = filenames.length
  3.times do
  	shuffled = []
  	left_pile = filenames[0..(full/2-1)]
  	right_pile = filenames[(full/2)..-1]
 	until shuffled.length == full
  		unless left_pile.empty?
  			shuffled.push(left_pile.shift)
  		end
  		shuffled.push(right_pile.shift)
  	end
  	filenames = shuffled
  end
  filenames = filenames.rotate(rand(full))
  filenames
end

def music_shuffle filenames
  ['aa/ddd', 'AAA/xxxx', 'AAA/zzzz', 'aa/ccc', 'foo/bar', 'AAA/yyyy', 'aa/bbb']
end
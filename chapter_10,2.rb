#shuffle 
def shuffle arr 
	shuf = [] #array for the shuffled indezes
	while arr.length > 0 
		rand_index = rand(arr.length) #one random index from array
		curr_index = 0 
		new_arr = [] # array for unshuffled items
		arr.each do |item|
			if curr_index == rand_index 
				shuf.push item # if the shuffledindex equals the random index 
								#then to shuffle array
			else 
				new_arr.push item #all other ones go to the unshuffled items array
			end 
			curr_index = curr_index + 1 
		end 
		arr = new_arr #we take the shuffled index from the array to the shuffled array 
					  # now we have to shuffle all other ones. Leading to a shorter array
		end
	shuf #return 
end 
srand 12345
puts (shuffle ([1,2,3,4,5,6,7,8,9]))
puts 
puts (shuffle ([1,2,3,4,5,6,7,8,9]))
puts 
srand 12345
puts (shuffle ([1,2,3,4,5,6,7,8,9]))

# random seed to see if its perfectly shuffled. However a perfect shuffled can also mean that
# there is a small likelihood to be the same. The order should be different almost every time. 






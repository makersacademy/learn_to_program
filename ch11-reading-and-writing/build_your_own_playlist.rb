def shuffle arr
	shuf = [] #asigns empty array to shuff

	while arr.length > 0 

		# Randomly pick one element of the array.

		rand_index = rand(arr.length) # gitves you back a random indext in the array. 

		# Now go through each item in the array,

		# putting them all into new_arr except for the

		# randomly chosen one, which goes into shuf.

	curr_index = 0

	new_arr = []

	arr.each do |item| # takes each item in the array 

	if curr_index == rand_index # this number is placed in the shuff array
		shuf.push item
	else #if not it is put in the new_arry
		new_arr.push item
	end
		curr_index = curr_index + 1 # This allows it to go through each index in the arr one by one. 
	end

		# Replace the original array with the new,

		# smaller array.

	arr = new_arr # this will be the array that is all the numbers other then the one where the index has matched with the random_index. 
	#This is then is passed back through the methods. 

	end

	shuf # return the array shuf  

end

puts(shuffle([1,2,3,4,5,6,7,8,9]))


# using the shuffle method as defined above
all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
   f.write ogg+"\n"
  end
end

puts 'Done!'
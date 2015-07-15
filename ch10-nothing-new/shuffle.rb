#Shuffle
#Looked at 5 different solutions - shown below.


#Writing own method for shuffle actions (using the Fisher-Yates shuffle - modern algorithm by Durstenfeld)

def shuffle array
	# setting up new empty array for the shuffled finished version
	new_shuffled_array = []

	# while the array has items in it we will shuffle it.
	while array.length > 0
		new_shuffled_array << array.delete_at(rand(arr.length))
	end

	# will print our shuffle array
	shuffled_array

	# ends the shuffle method
	end

	# This will allow us to check it is working correctly but printing out this array 'shuffled'
	puts shuffle [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]



#Option 2 - Writing own method by uing the .sort_by method within it.

def shuffle array
  array.sort_by {rand}
end

array = [1,4,7,3,3,7,4,2,5,7,8,4,3,8,3,2]

shuffle(array)



Option #3 - Using the new Ruby shuffle method (although this exercise asks for writing your own shuffle method)

array = [1,4,7,3,3,7,4,2,5,7,8,4,3,8,3,2]
array.shuffle


# Option 4 - Another approach using the Fishers/Yates/Knuth alogrithm.

def shuffle(array)
 (array.size-1).downto(1) do |x|
 	y = rand(x+1)
 	array[x], array[y] = array[y], array[x]
 end

array
end



# Option 5 - still not sure about this. Uses self keyword to access values of the objects.

def shuffle

	length = length
	counter = 0

		while length > 1
			result = counter + rand(length)
			self[counter], self[result] = self[result], self[counter]
			counter += 1
		end

end 

shuffle (array)

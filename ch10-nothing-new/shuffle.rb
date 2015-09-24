def shuffle arr

x = arr.length 
new_array = []
while x > 0
	rand_position = rand(x)
	x = x-1 
	# decremental to 0 which breaks the loop
	new_array.push arr[rand_position]
	#push random element of arr into new array
	arr[rand_position] = arr[x]
	# maee random element equal to last element of arr 
	arr.pop 
	#remove last element (equal to random element) from arr 
end 
new_array 

end
puts (shuffle ([1,2,3,4,5,6,7,8,9]))

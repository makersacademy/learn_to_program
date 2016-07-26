def shuffle arr
	#This function should take an array and randomly rearrange the items 
	#we need a way to move based on random ideas
	new_Arr = []
	until arr.length == 0
		t = arr.length
		r = rand(t)
		n = arr.pop(arr[r])
		new_Arr.push(n)
	end
puts new_Arr
end

shuffle [1,2,3,4,5,6,7,8,9]

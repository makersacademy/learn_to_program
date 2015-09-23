def sort array
	temp = []
	if array.length == 0
		return 0
	end
	x = 0
	y = 0
	while y < array.length
		if array[x] < array[y]
			y += 1
		elsif array[x] > array[y]
			x = y
			y += 1
		else
			y += 1
		end 
	end
	temp.push(array[x])	
	array.delete(array[x])
	temp = temp + sort(array)
end
array = ["o","b","c","z","m"]
puts sort(array)
def sort (array,array_sorted)
	return 0 if array.length <= 0
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
		array_sorted.push(array[x])
		array.delete(array[x])
		sort(array,array_sorted)
	end
end
end
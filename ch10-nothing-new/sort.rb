array = ["o","b","c","z","m"]
def sort array # This "wraps" recursive_sort.
    recursive_sort array, [] 
end
def recursive_sort unsorted_array, sorted_array
    if unsorted_array.length <= 0
    	puts "hello"
    end
	x = 0
	y = 0
	while y < unsorted_array.length
		if unsorted_array[x] < unsorted_array[y]
			y += 1
		elsif unsorted_array[x] > unsorted_array[y]
			x = y
			y += 1
		else
			y += 1
		end 	
		sorted_array.push(unsorted_array[x])
		unsorted_array.delete(unsorted_array[x])
		recursive_sort(unsorted_array, sorted_array)
	end
end 

print sort(array)


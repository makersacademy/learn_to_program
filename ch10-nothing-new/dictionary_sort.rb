def dictionary_sort(array,order='ascend')
	number_of_items = array.length
	number_of_swaps = 0
	for x in 0...(number_of_items-1)
		if order == 'ascend'
			if  array[x].downcase > array[x+1].downcase
				holdx = array[x]
				array[x] = array[x+1]
				array[x+1] = holdx
				number_of_swaps += 1
			end
		else
			if  array[x].downcase < array[x+1].downcase
				holdx = array[x]
				array[x] = array[x+1]
				array[x+1] = holdx
				number_of_swaps += 1
			end
		end
	end
	if number_of_swaps == 0
		return array
	else
		dictionary_sort(array,order)
	end
end

array = ['hello','Alien','we','time']
puts "#{dictionary_sort(array)}"



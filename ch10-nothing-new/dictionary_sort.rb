def dictionary_sort arr
	sorted = arr
		arr.each_index { |i|
		arr.each_index { |j| 
			if arr[i].downcase < arr[j].downcase
				arr[i], arr[j] = arr[j], arr[i]
			end	
		}	
	}
	return arr.each_index { |i| arr[i].downcase}
end 

def dictionary_sort arr
		arr.each_index { |i|
		arr.each_index { |j| 
			if arr[i].downcase < arr[j].downcase
				arr[i], arr[j] = arr[j], arr[i]
			end	
		}
	}
	print arr
end
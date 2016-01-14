def dictionary_sort arr
	arr.each_index do | first |
		arr.each_index do | second |
			if arr[first].downcase < arr[second].downcase
				arr[first], arr[second] = arr[second], arr[first]
			end
		end
	end
	arr
end

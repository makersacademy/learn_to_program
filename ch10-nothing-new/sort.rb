def sort arr
	arr.each_index do | first |
		arr.each_index do | second |
			if arr[first] < arr[second]
				arr[first], arr[second] = arr[second], arr[first]
			end
		end
	end
	arr
end

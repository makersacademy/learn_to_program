def sort arr
	0.upto(arr.length-2) do |i|
		if arr[i] > arr[i+1]
			temp = arr[i]
			arr[i] = arr[i+1]
			arr[i+1] = temp
			sort arr
		end
	end
	arr
end
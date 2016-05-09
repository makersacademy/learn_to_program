def dictionary_sort arr
  # your code here
	0.upto(arr.length-2) do |i|
		if arr[i] > arr[i+1]
			temp = arr[i]
			arr[i] = arr[i+1]
			arr[i+1] = temp
			dictionary_sort arr
		end
	end
	arr
end
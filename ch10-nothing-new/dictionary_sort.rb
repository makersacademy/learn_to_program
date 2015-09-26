def dictionary_sort arr
    arr_swap = true
  while arr_swap == true
    arr_swap = false
	(arr.length-1).times do |i|
	  if arr[i].downcase > arr[i+1].downcase
	    arr[i], arr[i+1] = arr[i+1], arr[i]
	    arr_swap = true
	  end
    end
  end
	arr
end
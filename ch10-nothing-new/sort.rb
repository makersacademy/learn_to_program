def sort arr
  arr_swap = true
  while arr_swap == true
    arr_swap = false
	(arr.length-1).times do |i|
	  if arr[i] > arr[i+1]
	    arr[i], arr[i+1] = arr[i+1], arr[i]
	    arr_swap = true
	  end
    end
  end
	arr
end
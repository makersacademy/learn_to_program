def sort arr
  
	arr1 = []
	for i in (0..arr.length-1)
		less = arr[i]
		pos_less = i
		for j in (i+1..arr.length-1)
			if (less > arr[j])
				less = arr[j]
				pos_less = j
			end
		end
	c = arr[i]
	arr[i] = arr[pos_less]
	arr[pos_less] = c
	end 
return arr

end
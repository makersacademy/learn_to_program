def dictionary_sort (arr)
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



# cat bat sat at

# 1 8 7 5 6 3


# 1 3 7 5 6 8

# less = 1
# arr = 1 


# dictionary_sort(["cat", "bat", "at", "some", "look"])
# # [1,7,6,8,2]
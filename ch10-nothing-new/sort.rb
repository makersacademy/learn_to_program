def sort arr

sorted_array = []

	while !arr.empty?
  	index = arr.index(arr.min)
  	sorted_array << arr.delete_at(index)
  	end

	return sorted_array
end



# returns sorted array, but deletes duplicate values

# def sort arr

# sorted_array = []

#   	while !arr.empty?
#   		sorted_array << arr.delete(arr.min)
#   	end

# 	return sorted_array
# end

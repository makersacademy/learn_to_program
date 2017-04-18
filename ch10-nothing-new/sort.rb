def sort arr
  recursive_sort(arr, []) 
end

def recursive_sort some_arr, sorted_arr
  return sorted_arr if some_arr == [] #base case: once finished scanning the array (i.e. the array is nil, we return the sorted array)  
  sorted_arr.push(some_arr.min)
  some_arr.delete_at(some_arr.index(some_arr.min)) #this line could be included in the method below or above, but I think this is easier to read
  recursive_sort(some_arr, sorted_arr)
end

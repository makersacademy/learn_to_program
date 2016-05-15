def dictionary_sort arr
  # your code here
  return arr if arr.length <= 1
  
  recursive_sort( arr, [])
  
  
end

def recursive_sort unsorted_arr, sorted_arr
    return sorted_arr.flatten if unsorted_arr == []
    
    sorted_arr << unsorted_arr.select {|a| a == unsorted_arr.min}
    unsorted_arr.delete(unsorted_arr.min)
    
    recursive_sort unsorted_arr, sorted_arr
    
   
    
end
  

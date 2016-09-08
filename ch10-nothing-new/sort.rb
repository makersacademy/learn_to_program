def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  smallest_id = 0
  
  (unsorted_array.length-1).times { |i|
    smallest_id = i+1 if unsorted_array[smallest_id] > unsorted_array[i+1]
  }
  
  sorted_array.push(unsorted_array.delete_at(smallest_id))
    
  if unsorted_array.length > 0
    recursive_sort unsorted_array, sorted_array
  else
    return sorted_array
  end
end
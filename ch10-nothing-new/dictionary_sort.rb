def dictionary_sort arr
  recursive_sort(arr, []) 
end

def recursive_sort some_arr, sorted_arr
  return sorted_arr if some_arr == [] 
  sorted_arr.push(some_arr.min_by {|w| w.downcase})
  some_arr.delete_at(some_arr.index(some_arr.min_by{|w| w.downcase}))
  recursive_sort(some_arr, sorted_arr)
end

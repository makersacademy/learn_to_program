def sort arr
  recursive_sort(arr, [])
end

def recursive_sort (unsorted_arr, sorted_arr)
  if unsorted_arr.count > 0
    sorted_arr << unsorted_arr.min
    unsorted_arr.delete_at(unsorted_arr.find_index(unsorted_arr.min))
    recursive_sort(unsorted_arr, sorted_arr)
  end

  sorted_arr
end
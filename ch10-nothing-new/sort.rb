def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array == []
  sorted_array << unsorted_array.min
  unsorted_array.delete_at(unsorted_array.index(unsorted_array.min) || unsorted_array.length)
  recursive_sort unsorted_array, sorted_array
end
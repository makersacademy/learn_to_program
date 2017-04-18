def sort(array)
  recursive_sort(array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  sorted_array << unsorted_array.delete_at(unsorted_array.index(unsorted_array.min))
  return sorted_array if unsorted_array.size < 1
  recursive_sort(unsorted_array, sorted_array)
end

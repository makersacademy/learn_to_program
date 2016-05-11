def dictionary_sort arr
  recursive_sort arr, arr.map(&:downcase),[]
end

def recursive_sort unsorted_array, unsorted_downcase, sorted_array
  return sorted_array if unsorted_array == []
  min_index = unsorted_downcase.index(unsorted_downcase.min)
  sorted_array << unsorted_array[min_index]
  unsorted_array.delete_at(min_index)
  unsorted_downcase.delete_at(min_index)
  recursive_sort unsorted_array, unsorted_downcase, sorted_array
end
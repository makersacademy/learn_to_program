def dictionary_sort arr
  recursive_sort arr,[]
end

def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array == []
  alL_downcase = unsorted_array.map(&:downcase)
  min_index = alL_downcase.index(alL_downcase.min)
  sorted_array << unsorted_array[min_index]
  unsorted_array.delete_at(min_index)
  recursive_sort unsorted_array, sorted_array
end
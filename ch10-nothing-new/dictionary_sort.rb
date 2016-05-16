def dictionary_sort(some_array)
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  return sorted_array if unsorted_array.length <= 0
  all_downcase = unsorted_array.map(&:downcase)
  downcase_min_index = all_downcase.index(all_downcase.min)
  sorted_array << unsorted_array[downcase_min_index]
  unsorted_array.delete_at(downcase_min_index)
  recursive_sort(unsorted_array, sorted_array)
end

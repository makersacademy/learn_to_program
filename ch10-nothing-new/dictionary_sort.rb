def dictionary_sort(some_array)
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  return sorted_array if unsorted_array.length <= 0
  all_downcase = unsorted_array.map(&:downcase)
  downcase_mindex = all_downcase.index(all_downcase.min)
  sorted_array << unsorted_array[downcase_mindex]
  unsorted_array.delete(unsorted_array[downcase_mindex])
  recursive_sort(unsorted_array, sorted_array)
end

unsorted_words = ['Red', 'yellow', 'pink', 'Green', 'purple', 'orange', 'blue']
puts dictionary_sort(unsorted_words)

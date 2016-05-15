def sort(some_array)
  recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  return sorted_array if unsorted_array.length <= 0
  sorted_array << unsorted_array.min
  unsorted_array.delete(unsorted_array.min)
  recursive_sort(unsorted_array, sorted_array)
end

unsorted_words = ['red', 'yellow', 'pink', 'green', 'purple', 'orange', 'blue']
puts sort(unsorted_words)

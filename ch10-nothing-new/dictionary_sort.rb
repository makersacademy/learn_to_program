def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.size == 0
  smallest = unsorted_array[0]
  (unsorted_array.length).times do |x|
    smallest = unsorted_array[x] if smallest.downcase > unsorted_array[x].downcase
  end
  sorted_array << smallest
  unsorted_array.delete_at(unsorted_array.index(smallest))
  recursive_sort unsorted_array, sorted_array
end

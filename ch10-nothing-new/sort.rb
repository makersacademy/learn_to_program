def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.size == 0
  smallest = unsorted_array[0]
  (unsorted_array.length).times do |x|
    smallest = unsorted_array[x] if smallest > unsorted_array[x]
  end
  sorted_array << smallest
  unsorted_array.delete_at(unsorted_array.index(smallest))
  recursive_sort unsorted_array, sorted_array
end
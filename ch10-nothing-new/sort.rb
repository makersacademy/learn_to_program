def sort some_array

  recursive_sort some_array, []

end


def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.empty?

  sorted_array << unsorted_array.min
  unsorted_array.delete_at(unsorted_array.index(unsorted_array.min))

  recursive_sort unsorted_array, sorted_array
end

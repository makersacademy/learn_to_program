def dictionary_sort arr
  recursive_dict_sort arr, []
end

def recursive_dict_sort unsorted_arr, sorted_arr
  # we need to check if an unsorted array has only one item, then there's nothing to sort.
  return sorted_arr if unsorted_arr.length <= 1
  # first we remove the last element from an unsorted array.
  smallest = unsorted_arr.pop
  # then create an empty array for the rest of the unsorted array.
  rest_arr = []

  unsorted_arr.each do |object|
    # if an object is smaller than the last element of the unsorted array
    if object.downcase < smallest.downcase
      # then we assign it to the smallest and add the last element of the unsorted array to the rest.
      rest_arr.push smallest
      smallest = object
    else
      # otherwise, we add this object to the rest array.
      rest_arr.push object
    end
  end
  # insert the smallest element into the sorted array.
  sorted_arr.push smallest
  # we recursively find the smallest element in the rest array and add it to the sorted array.
  recursive_dict_sort rest_arr, sorted_arr

end

puts(dictionary_sort(['The', 'smiles', 'that', 'win']))
def dictionary_sort(arr)
  recursive_sort(arr, [])
end

def recursive_sort(unsorted_arr, sorted_arr)
  while unsorted_arr.length > 0
    smallest = unsorted_arr[0]
    unsorted_arr.each{ |word| smallest = word if word.downcase < smallest.downcase }

    sorted_arr << smallest
    i = unsorted_arr.index(smallest)
    unsorted_arr.delete_at(i)
    recursive_sort(unsorted_arr, sorted_arr)
  end
  return sorted_arr
end
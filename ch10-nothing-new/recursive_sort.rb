def sort some_array # This "wraps" recursive_sort.
recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array

    array_last = unsorted_array.length - 1
    smallest = unsorted_array[0]
    smallest_pos = 0
    for num in (1..array_last) do 
      if (smallest > unsorted_array[num])
        smallest = unsorted_array[num]
        smallest_pos = num
      end 
    end
    unsorted_array.delete_at(smallest_pos)
    sorted_array << smallest
  if (unsorted_array.length > 0) 
    recursive_sort unsorted_array, sorted_array
  end
  return sorted_array
end

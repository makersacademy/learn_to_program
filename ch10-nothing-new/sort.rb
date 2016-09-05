def sort(unsorted_array)
  recursive_sort(unsorted_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
  smallest = find_smallest(unsorted_array)
  if unsorted_array.size > 0 # Exit condition to break the recursiveness
    unsorted_array.delete_at(unsorted_array.find_index(smallest))
    sorted_array.push(smallest)
    recursive_sort(unsorted_array, sorted_array)
  else
    sorted_array
  end
end

def find_smallest(unsorted_array)
  smallest = nil
  unsorted_array.each do |element|
    if smallest.nil? || element < smallest
      smallest = element
    end
  end
  smallest
end

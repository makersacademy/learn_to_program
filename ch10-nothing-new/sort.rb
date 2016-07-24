def sort arr # This "wraps" recursive_sort.
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.length <= 0
  array_tbs = [] #temp array for storing elems till the sorted_array is complete
  #remove the first item and define it as the smallest element
  s_elem = unsorted_array.shift
  #compare unsorted_array's elems to the smallest and copy them to array_tbs
  unsorted_array.each do |elem|
    if elem < s_elem
      array_tbs << s_elem; s_elem = elem #new smallest elem is assigned
    else
      array_tbs << elem
    end
  end
  sorted_array << s_elem #smallest elem added to the end of sorted_array
  recursive_sort(array_tbs, sorted_array)
end

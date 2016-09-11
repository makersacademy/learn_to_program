def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end
  smallest = unsorted_array.pop
  stillunsorted = []

  unsorted_array.each do |x|
    if x.downcase < smallest.downcase
    stillunsorted.push smallest
    smallest = x
   else
    stillunsorted.push x
  end
  end
    sorted_array.push smallest
    recursive_sort stillunsorted, sorted_array
end

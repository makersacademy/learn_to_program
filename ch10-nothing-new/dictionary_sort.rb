def dictionary_sort arr
  # your code here
  return recursive_sort(arr, [])
end

def recursive_sort(unsorted_array, sorted_array)
    return sorted_array if unsorted_array.empty?
    #l = unsorted_array.length-1
    smallest = unsorted_array.pop
    unsorted2 = []
    unsorted_array.each do |check|
        if check.downcase < smallest.downcase
            unsorted2 << smallest
            smallest = check
        else
            unsorted2 << check
        end
    end
    sorted_array << smallest

    recursive_sort(unsorted2, sorted_array)
end
def dictionary_sort arr
  # your code here
  return recursive_sort(arr, [])
end

def recursive_sort(unsorted_array, sorted_array)
    return sorted_array if unsorted_array.empty?
    index = 0
    (0..unsorted_array.length-1).each do |i|
        if i == unsorted_array.length-1
            index = unsorted_array.length-1
        elsif unsorted_array[i+1].downcase > unsorted_array[i].downcase
            index = i+1
        end
    end
    sorted_array << unsorted_array[index]
    unsorted_array.delete_at(index)
    recursive_sort(unsorted_array, sorted_array)
end

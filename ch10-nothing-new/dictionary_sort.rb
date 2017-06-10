def dictionary_sort arr
  # your code here
  return recursive_sort(arr, [])
end

def recursive_sort(unsorted_array, sorted_array)
    return sorted_array if unsorted_array.empty?
    index = 0
    l = unsorted_array.length-1
    print unsorted_array
    (0..l).each do |i|
        break if unsorted_array[i+1].nil?
        if unsorted_array[i+1].downcase > unsorted_array[i].downcase
            index = i+1
        end
    end
    print index
    print unsorted_array[index]
    sorted_array.unshift( unsorted_array[index])
    unsorted_array.delete_at(index) # could swap values rather than delete?
    recursive_sort(unsorted_array, sorted_array)
end
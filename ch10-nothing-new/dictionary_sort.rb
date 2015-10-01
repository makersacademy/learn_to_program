def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort(unsorted_array, sorted_array)
    if unsorted_array.length <= 0
        return sorted_array
    end
    
    smallest = unsorted_array.pop
    still_unsorted = []
    
    unsorted_array.each do |item|
        if item.downcase < smallest.downcase
            still_unsorted.push smallest
            smallest = item
            else
            still_unsorted.push item
        end
    end
    
    sorted_array.push smallest
    recursive_sort(still_unsorted, sorted_array)
    
end

puts dictionary_sort(["apples", "Forks", "gamble"])

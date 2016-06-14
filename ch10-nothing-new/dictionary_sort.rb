def dictionary_sort arr
    recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
    
    if unsorted_array.length <= 0
        return sorted_array
    end
    
    smallest = unsorted_array.pop
    still_unsorted = []
    
    unsorted_array.each do |testnum|
        if testnum.downcase < smallest.downcase
            still_unsorted << smallest
            smallest = testnum
        else
            still_unsorted << testnum
        end
    end
    sorted_array << smallest
    
    recursive_sort still_unsorted, sorted_array
end

print dictionary_sort ['Table', 'apple', 'chair', 'Banana', 'Laptop']
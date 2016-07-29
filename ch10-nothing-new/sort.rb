def sort some_array 
    recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
    if unsorted_array.length > 0
        smallest = unsorted_array.min
        unsorted_array.delete(smallest)
        sorted_array << smallest
        recursive_sort unsorted_array, sorted_array
    end
    return sorted_array
end

puts(sort(["laugh", "Apple", "sail", "Pear"]))

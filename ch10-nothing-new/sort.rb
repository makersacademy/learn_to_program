def sort some_array 
    recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
   has_changed = false   # means nothing has changed after iteration
    
    for i in 0...unsorted_array.length-1
        if unsorted_array[i].downcase > unsorted_array[i+1].downcase
            temp = unsorted_array[i]
            unsorted_array[i] = unsorted_array[i+1]
            unsorted_array[i+1] = temp
            has_changed = true
        end            
    end
    
    if has_changed == true
        recursive_sort unsorted_array, sorted_array
    else
        sorted_array = unsorted_array
        return sorted_array
    end
end



puts(sort(["laugh", "Apple", "sail", "Pear"]))
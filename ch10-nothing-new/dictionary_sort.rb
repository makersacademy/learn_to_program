def dictionary_sort some_array
    recursive_dictionary_sort some_array, []
end

def recursive_dictionary_sort unsorted_array, sorted_array
    
    until unsorted_array.count == 2
        y = 1
        x = 0
        
        until y == unsorted_array.count
            if unsorted_array[x].downcase < unsorted_array[y].downcase
                y += 1
                else
                x = y
                y += 1
            end
        end
        sorted_array << unsorted_array[x]
        unsorted_array.delete_at(x)
    end
    
    if unsorted_array[0]<unsorted_array[1]
        sorted_array << unsorted_array[0]
        sorted_array << unsorted_array[1]
        else
        sorted_array << unsorted_array[1]
        sorted_array << unsorted_array[0]
    end
    return sorted_array
end
def dictionary_sort arr
  recursive_sort arr, []
end

#the method that actually does sorting
def recursive_sort unsorted_array, sorted_array
    j = 1
    
    smallest = unsorted_array[0].to_s.downcase
    
    until unsorted_array.length == 0
        
        smallest_index = 0
        
        # find smallest in unsorted_array
        while j < unsorted_array.length
            if unsorted_array[j].to_s.downcase < smallest
                smallest = unsorted_array[j].to_s.downcase
                smallest_index = j
            end
            j += 1
        end
        
        # move it from the unsorted array to the end of already_sorted
        sorted_array << unsorted_array[smallest_index]
        unsorted_array.delete_at(smallest_index)
        
        # find next smallest with recursive call
        recursive_sort unsorted_array, sorted_array
    end
    
    return sorted_array
end

puts dictionary_sort ["avada", "Kedavra", "black", "SirIUs", "harry"]
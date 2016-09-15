def sort arr
# wrapper method; pass given array for sorting, along with an empty array
  recursive_sort arr, []
end

#the method that actually does sorting
def recursive_sort unsorted_array, sorted_array
    j = 1
    
    smallest_index = 0
    
    until unsorted_array.length == 0
        # find smallest in unsorted_array
        while j < unsorted_array.length
            smallest_index = j if unsorted_array[j] < unsorted_array[smallest_index]
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

puts sort ["avada", "kedavra", "black", "sirius", "harry"]
puts sort ["a","feel", "can", "like", "can","singing"]


def sort arr
# wrapper method; pass given array for sorting, along with an empty array
  recursive_sort arr, []
end

#the method that actually does sorting
def recursive_sort unsorted_array, sorted_array
    j = 1
    
    smallest = unsorted_array[0]
    
    until unsorted_array.length == 0
        # find smallest in unsorted_array
        while j < unsorted_array.length
            smallest = unsorted_array[j] if unsorted_array[j] < smallest
            j += 1
        end
        
        # move it from the unsorted array to the end of already_sorted
        unsorted_array.delete(smallest)
        sorted_array << smallest
        
        # find next smallest with recursive call
        recursive_sort unsorted_array, sorted_array
    end
    
    return sorted_array
end

puts sort ["avada", "kedavra", "black", "sirius", "harry"]

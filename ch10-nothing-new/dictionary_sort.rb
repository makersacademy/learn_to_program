def dictionary_sort arr
    recursive_dict_sort(arr, [])
end #Intial method utilises future recursive sorting method

def recursive_dict_sort(unsorted, sorted) #Recursive method used in order to keep going through array and sorting when required
    if unsorted.length <= 0
        return sorted
        end
    smallest = unsorted.pop
    still_unsorted = []
    
    unsorted.each do |x|
        if x.downcase < smallest.downcase
            still_unsorted.push smallest
            smallest = x
        else
            still_unsorted.push x
        end #If statement determining which variable to put into which array
    end
    sorted.push smallest
    recursive_dict_sort(still_unsorted, sorted) #Run method again to determine if any remaining elements of the array need sorting.
end
puts dictionary_sort ["Banana", "Apple", "Cucumber", "Dragon"]  
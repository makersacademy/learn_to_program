def dictionary_sort arr
  rec_dict_sort(arr, [])
end

def rec_dict_sort(unsorted, sorted)
    if unsorted.length <= 0
        return sorted
    end
    
    smallest = unsorted.pop
    still_unsorted = []
    
    unsorted.each do |tester|
        if tester.downcase < smallest.downcase 
            still_unsorted.push smallest
            smallest = tester
        else
            still_unsorted.push tester
        end
    end
    
sorted.push smallest

rec_dict_sort(still_unsorted, sorted)
end
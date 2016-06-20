def dictionary_sort (arr)
  # your code here
  sorting_array (arr,[])
end

def sorting_array (sorted,unsorted)
    if unsorted.length = 0
        return sorted
    end
    
    smallest_word = unsorted.pop
    still_unsorted= []
    
    unsorted.each do |x|
        if x.downcase < smallest_word.downcase
            still_unsorted.push (smallest_word)
            smallest_word = test_object
        else
            still_unsorted.push (tested_object)
        end 
    end
    sorted.pus(smallest_word)
    
    sorting_array still_unsorted, sorted
    
end
#-------------SOLUTION USED---------------------
#difficulties, creating still_unsorted as an intermediate array
#final sorting_array used with still_unsorted and sorted
#re-read Chp 10


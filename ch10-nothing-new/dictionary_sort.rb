def dictionary_sort arr 
  rec_dict_sort arr, []
end

def rec_dict_sort unsorted, sorted 
  if unsorted.length <= 0
    return sorted 
  end
  
 smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end 
  end
  
    sorted.push smallest
  
  rec_dict_sort still_unsorted, sorted
end




#def dictionary_sort (arr)
  # your code here
#  sorting_array arr []
#end

#def sorting_array (sorted,unsorted)
#    if unsorted.length <= 0
#        return sorted
#    end
#    
#    smallest_word = unsorted.pop
#    still_unsorted= []
#    
#    unsorted.each do |x|
#        if x.downcase < smallest_word.downcase
#            still_unsorted.push smallest_word
#            smallest_word = test_object
#        else
#            still_unsorted.push tested_object
#        end 
#    end
#    sorted.push smallest_word
#    
#    sorting_array still_unsorted, sorted
#    
#end
#-------------SOLUTION USED---------------------
#difficulties, creating still_unsorted as an intermediate array
#final sorting_array used with still_unsorted and sorted
#re-read Chp 10
#requirements for () as arguments?



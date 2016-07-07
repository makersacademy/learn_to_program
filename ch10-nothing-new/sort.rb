def sort arr 
  rec_sort arr, []
end

def rec_sort unsorted, sorted 
  if unsorted.length <= 0
    return sorted 
  end
  
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object| 
    if tested_object < smallest
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end 
  end
  
    sorted.push smallest
  
  rec_sort still_unsorted, sorted
end





#def sort arr
  # your code here
#  sorting_array arr,[]
#end

#def sorting_array (sorted,unsorted)
#    if unsorted.length = 0
#        return sorted
#    end
#    
#    smallest_word = unsorted.pop
#    still_unsorted= []
#    
#    unsorted.each do |x|
#        if x.downcase < smallest_word.downcase
#            still_unsorted.push (smallest_word)
#            smallest_word = test_object
#        else
#            still_unsorted.push (tested_object)
#        end 
#    end
#    sorted.pus(smallest_word)
#    
#    sorting_array still_unsorted, sorted
#    
#end
# understand reason why this code doesnt work compared to the other code??? looks similar yet errors


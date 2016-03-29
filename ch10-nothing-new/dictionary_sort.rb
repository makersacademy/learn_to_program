def dictionary_sort arr
    recursion_sorting([], arr)
end


def recursion_sorting(sorted_array, unsorted_array)                             # previous sorting method was creating infinite loops 
                                                                                # was also not removing words from unsorted array
    if unsorted_array.length <= 0                                               # due to using << rather than .push
        return sorted_array
    end
        
        still_unsorted = []
        
        test_word = unsorted_array.shift 
    
        unsorted_array.each do |word|
            if word.downcase < test_word.downcase
                still_unsorted.push(test_word)
                test_word = word
            else
                still_unsorted.push(word)
            end
        end
        sorted_array.push(test_word)
    
    recursion_sorting(sorted_array, still_unsorted)
end

=begin
def dictionary_sort arr 
  rec_dict_sort arr, []
end

def rec_dict_sort unsorted, sorted 
  if unsorted.length <= 0
    return sorted 
  end

  # So if we got here, then it means we still 
  # have work to do.

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
  # Now "smallest" really does point to the
  # smallest element that "unsorted" contained,
  # and all the rest of it is in "still_unsorted". 
  sorted.push smallest
  
  rec_dict_sort still_unsorted, sorted
end
=end

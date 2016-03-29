def sort arr
    recursion_sorting([], arr)
end


def recursion_sorting(sorted_array, unsorted_array)  
    
    if unsorted_array.length <= 0                                               
        return sorted_array
    end
        
        still_unsorted = []
        
        test_word = unsorted_array.shift 
    
        unsorted_array.each do |word|
            if word < test_word
                still_unsorted.push(test_word)
                test_word = word
            else
                still_unsorted.push(word)
            end
        end
        sorted_array.push(test_word)
    
    recursion_sorting(sorted_array, still_unsorted)
end
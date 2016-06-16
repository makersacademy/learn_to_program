
def dictionary_sort array
    rec_sort array, []
    
end


def rec_sort unsorted, sorted
    
    if unsorted.length <= 0
        return sorted
        
    end
    smallest = unsorted.pop
    still_unsorted = []
    
    unsorted.each do |word|
        
        if word < smallest
            still_unsorted.push smallest
            smallest = word
            
            else
            still_unsorted.push word
            
        end
    end
    
    sorted.push smallest
    
    rec_sort still_unsorted, sorted
    
    return sorted.sort_by { |word| word.downcase }
    
    
end

puts dictionary_sort(['can','feel','singing','Like','A','can'])
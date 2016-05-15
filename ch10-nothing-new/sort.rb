def sort arr 
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted 
  if unsorted.length <= 0
    return sorted 
  end


  smallest_word = unsorted.pop
  still_unsorted = []

  unsorted.each do |word_to_test| 
    if word_to_test < smallest_word
      still_unsorted.push smallest_word
      smallest_word = word_to_test
    else
      still_unsorted.push word_to_test
    end 
  end

  

  sorted.push smallest_word
  
  recursive_sort still_unsorted, sorted
end

#test if code works 
# puts sort ['dates', 'cherries', 'bananas', 'apples']
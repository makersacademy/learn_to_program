def dictionary_sort(arr)
  # your code here
  recursive_sort(arr,[])
end

def recursive_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end
  smallest = unsorted.pop
  still_unsorted = []
  
  unsorted.each do |tested_word|
    if tested_word.downcase < smallest.downcase
      still_unsorted.push(smallest)
      smallest = tested_word
    else
      still_unsorted.push(tested_word)
    end
  end
  
  sorted.push(smallest)
  recursive_sort(still_unsorted, sorted)
end


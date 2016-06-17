def dictionary_sort arr
  rec_sort arr, [] #calls other method and passes in arr as the unsorted_arr
                           #passes in [] as the sorted_arr
end

def rec_sort unsorted, sorted
  if unsorted.empty?
    return sorted   #stops recursion if all the strings have been transferred to sorted_arr
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |word|
    if word.downcase < smallest.downcase #downcase the two compared
      still_unsorted.push smallest
      smallest = word
    else
      still_unsorted.push word
    end
  end

  sorted.push smallest

  rec_sort still_unsorted, sorted
end

dictionary_sort ["hello", "it", "is", "nice", "A", "to", "meet", "You", "you"]

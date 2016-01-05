def dictionary_sort(arr) 
  rec_dict_sort(arr, [])
end

def rec_dict_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted 
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |x|
    if x.downcase < smallest.downcase
      still_unsorted << smallest
      smallest = x
    else
      still_unsorted << x
    end 
  end
  sorted << smallest
  
  rec_dict_sort still_unsorted, sorted
end

#puts dictionary_sort(["dog", "cat", "wolf", "rabbit"])
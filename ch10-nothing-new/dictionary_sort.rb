def dictionary_sort(arr)
  rec_dict_sort(arr, []) # passes in an empty array for us
end

def rec_dict_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end


  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |i|
    if i.downcase < smallest.downcase
      still_unsorted << smallest
      smallest = i
    else
      still_unsorted << i 
    end
  end

  sorted.push smallest

  rec_dict_sort(still_unsorted, sorted)
end

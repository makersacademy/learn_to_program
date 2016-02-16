def dictionary_sort(arr)
  # your code here
  rec_sort(arr, [])
end

def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |test_obj|
    if test_obj.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = test_obj
    else
      still_unsorted.push test_obj
    end
  end

  sorted.push smallest
  rec_sort(still_unsorted, sorted)
end

# puts dictionary_sort(['can','feel','singing.','like','A','can'])

def recursive_sort(arr, sorted)
  if arr.length < 1
    return sorted
  end
  current_lowest = arr.shift
  unsorted = []
  arr.each do |word|
    if word < current_lowest
      unsorted << current_lowest
      current_lowest = word
    else
      unsorted << word
    end
  end
  sorted << current_lowest
  recursive_sort(unsorted, sorted)
end

def sort(arr)
  recursive_sort(arr, [])
end

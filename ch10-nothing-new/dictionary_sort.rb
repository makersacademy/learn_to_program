def dictionary_sort arr
  recursive_sort(arr, [])
end

def recursive_sort(arr, sorted)
  if arr.length < 1
    return sorted
  end
  current_lowest = arr.shift
  unsorted = []
  arr.each do |word|
    if word.downcase < current_lowest.downcase
      unsorted << current_lowest
      current_lowest = word
    else
      unsorted << word
    end
  end
  sorted << current_lowest
  recursive_sort(unsorted, sorted)
end

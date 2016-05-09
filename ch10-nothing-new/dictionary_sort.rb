def dictionary_sort arr
  recursive_sort(arr, [])
end

def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array.length == 0
    return sorted_array
  end
  _unsorted = []
  smallest = unsorted_array.pop

  unsorted_array.each do |word|
    if word.downcase < smallest.downcase
      _unsorted.push smallest
      smallest = word
    else
      _unsorted.push word
    end
  end
  sorted_array.push smallest
  unsorted_array = _unsorted

  recursive_sort(_unsorted, sorted_array)
  p sorted_array
end

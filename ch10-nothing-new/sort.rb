def sort arr
  recursive_sort(arr, [])
end

def recursive_sort(array, sorted)
  if array.length <= 0
    return sorted
  end

  still_unsorted = []
  smallest_word = array.pop

  array.each do |word|
    if word < smallest_word
      still_unsorted << smallest_word
      smallest_word = word
    else
      still_unsorted << word
    end
  end
  sorted << smallest_word

  recursive_sort(still_unsorted, sorted)
end

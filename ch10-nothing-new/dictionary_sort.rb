def dictionary_sort arr
  recursive_sort(arr, [])
end

def recursive_sort(unsorted, sorted)
  return sorted if unsorted.empty?

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |word|
    if word.downcase < smallest.downcase
      still_unsorted << smallest
      smallest = word
    else
      still_unsorted << word
    end
  end

  sorted << smallest

  recursive_sort(still_unsorted, sorted)
end
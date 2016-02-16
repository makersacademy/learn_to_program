def sort some_array # This "wraps" recursive_sort.
recursive_sort some_array, []
end

def recursive_sort unsorted, sorted
    until unsorted == []
      sorted << unsorted.min
      unsorted.slice!(unsorted.index(unsorted.min))
    end
  sorted
end
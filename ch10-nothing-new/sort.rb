def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  return sorted if unsorted.length <= 0

  # take the first value in the unsorted array.
  # sorting = unsorted.first
  # actually, it can't be the first value because then unsorted_each will always say x < sorting is false because they're actually the same value. take the last value instead.
  sorting = unsorted.pop
  not_sorted = []

  unsorted.each { |x|
    if x < sorting
      #if x is smaller, then we know sorting isn't the smallest so change the value.
      not_sorted << sorting
      sorting = x
    else
      not_sorted << x
    end }

  #so x will always check against the smallest value from the previous comparison. By the end of the loop, will have sorting = smallest value
  sorted << sorting
  recursive_sort not_sorted, sorted
end
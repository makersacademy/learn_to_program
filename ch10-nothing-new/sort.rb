def sort (arr)
  recursive_sort(arr, [])
end

def recursive_sort (unsorted, sorted)
  if unsorted.size <= 0
    return sorted
  end
  small = unsorted.pop
  to_sort = []

  unsorted.each do |x|
    if x < small
      to_sort << small
      small = x
    else
      to_sort << x
    end
  end
  sorted << small

  recursive_sort(to_sort, sorted)
end

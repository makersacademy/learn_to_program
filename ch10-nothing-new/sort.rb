def sort (arr)
  recursive_sort(arr, [])
end

def recursive_sort (unsorted, sorted)
  return sorted if unsorted.length == 0

  smallest = unsorted.pop
  sort = []

  unsorted.each do |x|
    if smallest < x
      sort << x
    else
      sort << smallest
      smallest = x
    end
  end

  sorted << smallest
  recursive_sort(sort, sorted)
end
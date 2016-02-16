def sort (arr)
  recursive_sort(arr, [])
end

def recursive_sort (unsorted, sorted)
  return sorted if unsorted.length == 0

  smallest = unsorted.pop
  sort_this_shit = []

  unsorted.each do |x|
    if smallest < x
      sort_this_shit << x
    else
      sort_this_shit << smallest
      smallest = x
    end
  end

  sorted << smallest
  recursive_sort(sort_this_shit, sorted)
end

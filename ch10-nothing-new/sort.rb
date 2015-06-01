def sort(arr)
  recursive_sort(arr, [])
end

def recursive_sort(arr, sorted)
  return sorted if arr.length == 0
  smallest = arr.pop
  unsorted = []
  arr.each do | word |
    if word < smallest
      unsorted << smallest
      smallest = word
    else
      unsorted << word
    end
  end
  sorted << smallest
  recursive_sort(unsorted, sorted)
end
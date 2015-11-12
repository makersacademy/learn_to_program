def sort arr
  # your code here
rec_sort arr, []
end

def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |i|
    if i < smallest
      still_unsorted.push smallest
      smallest = i
    else
      still_unsorted.push i
    end
  end
  sorted.push smallest
  rec_sort(still_unsorted, sorted)
end 

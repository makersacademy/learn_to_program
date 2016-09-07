def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted

  if unsorted.length < 1
    return sorted
  end

  still_unsorted = []
  smallest = unsorted.pop  # smallest placeholder item

  unsorted.each do |i|
    if i < smallest
      still_unsorted << smallest
      smallest = i
    else
      still_unsorted << i
    end
  end
  
  # this returns smallest item,store it in sorted and use recursion to find the next smallest item. 
  
  sorted << smallest
  rec_sort still_unsorted, sorted

end


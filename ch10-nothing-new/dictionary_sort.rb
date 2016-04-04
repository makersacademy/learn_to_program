def dictionary_sort arr
  # your code here
  wrapper arr, []
end

def wrapper unsorted, sorted
  return unsorted if unsorted.length <1
  smallest = unsorted.pop
  still_unsorted =[]
  unsorted.each do |x|
    if x.downcase < smallest.downcase
      still_unsorted << smallest
      smallest = x
    else
      still_unsorted << x
    end
  end
  sorted << smallest

wrapper still_unsorted, sorted

sorted
end

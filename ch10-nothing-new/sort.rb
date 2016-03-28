def sort arr
  # your code here
  still_unsorted = []
  already_sorted = []
  smallest = arr.first
  sorted_idx = 0
# take list of words, and find "smallest" word comparing with "<", make note of index
  arr.each_index do |i|
    if arr[i] < smallest
      smallest = arr[i]
      sorted_idx = i
    end
  end

  already_sorted << smallest
  arr.slice!(sorted_idx)
  still_unsorted = arr
  while still_unsorted.size > 0
    already_sorted << sort(still_unsorted)
  end
  already_sorted.flatten
end

#def recursive_sort unsorted, sorted
# sorted << sort unsorted
#end
#a = sort ["c","b","Z","a","b"]
#p a
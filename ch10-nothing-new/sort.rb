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


=begin
def sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x < middle}
  more = arr.select{|x| x >= middle}

  sort(less) + [middle] + sort(more)
end
=end
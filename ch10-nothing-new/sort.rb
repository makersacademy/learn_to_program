def sort unsorted
 	recursive_sort unsorted, []
end

def recursive_sort unsorted, sorted
  lowest = unsorted.min
  sorted << lowest
  unsorted.delete_at(unsorted.index(lowest))
  unsorted.empty? ? sorted : (recursive_sort unsorted, sorted)
end

sort([4,7,2,8,33,5,2,11,7,544,22,7,2,1,456,866,3355])
sort(['can','feel','singing','like','a','can'])
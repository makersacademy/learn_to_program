def dictionary_sort(array)
  recursive_sort(array, [])
end

def recursive_sort(unsorted, sorted)
  return p sorted if unsorted.size == 0
  
  smallest = unsorted[0]
  unsorted.each do |n|
    smallest = n if smallest.downcase > n.downcase
  end
  
  sorted << smallest
  
  unsorted.delete_at(unsorted.index(smallest))
  recursive_sort(unsorted, sorted)
end

def sort(arr)
  recursive_sort(arr, [])
end

def recursive_sort(unsorted, sorted)
  smallest = unsorted[0]

  if unsorted.empty?
    return sorted
  end

  unsorted.each do |word|
    smallest = smallest.downcase < word.downcase ? smallest : word
  end

  sorted.push smallest
  unsorted.delete_at(unsorted.index(smallest))
  return recursive_sort(unsorted, sorted)
end


puts sort(["Alpha", "alpha", "ready", "Zulu"])

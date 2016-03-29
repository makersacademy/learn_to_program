def dictionary_sort arr
  recursive_sort(arr, [])
end

def recursive_sort unsorted, sorted
  if unsorted.size <= 0
    return sorted
  end

  lowercase = unsorted.map(&:downcase)
  index     = lowercase.index(lowercase.min)
  smallest  = lowercase[index]

  if unsorted[index] == smallest.capitalize
      unsorted.delete_at(index)
      sorted << smallest.capitalize
    else
      unsorted.delete_at(index)
      sorted << smallest
    end
      recursive_sort(unsorted, sorted)
end

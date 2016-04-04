def dictionary_sort arr
  recursive_dict_sort arr, []
end

def recursive_dict_sort(unsorted, sorted)
  return sorted if unsorted.length <= 0
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |item|
    if item.downcase < smallest.downcase
      still_unsorted.push(smallest)
      smallest = item
    else
      still_unsorted.push(item)
    end
  end
  sorted.push(smallest)
  recursive_dict_sort(still_unsorted, sorted)
end

def dictionary_sort(arg)
  rec_dict(arg, [])
end

def rec_dict(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end
  smallest = unsorted.pop #removes the last element! [b, c, d] => [b, c]
  still_unsorted = []

  unsorted.each do |array_item|
    if array_item.downcase < smallest.downcase
      still_unsorted.push(smallest) # adds an item to the end of an array
      smallest = array_item
    else
      still_unsorted.push(array_item)
    end
  end
  sorted.push(smallest)
  rec_dict(still_unsorted, sorted)
end

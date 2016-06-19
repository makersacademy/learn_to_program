def sort(arr)
  sorter(arr, []) 
end

def sorter(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_obj|
    if tested_obj < smallest
      still_unsorted.push smallest
      smallest = tested_obj
    else
      still_unsorted.push tested_obj
    end
  end

  sorted.push smallest
  sorter(still_unsorted, sorted)
end

puts(sort(['can', 'feel', 'singing', 'a', 'can']))

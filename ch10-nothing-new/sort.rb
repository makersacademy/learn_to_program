def sort (arr)
  recursive_sort(arr, [])
end

def recursive_sort(unsorted, sorted)
  if unsorted.length == 0
    return sorted
  end

  smallest       = unsorted.pop
  still_unsorted = []

  unsorted.each do |array_element|
    if array_element < smallest
      still_unsorted.push smallest
      smallest = array_element
    else
      still_unsorted.push array_element
    end
  end

  sorted.push smallest
  recursive_sort(still_unsorted, sorted)
end

# Had trouble with this one so found it useful to work through the solution.




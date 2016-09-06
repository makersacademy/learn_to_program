def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end
  smallest = unsorted_array.pop
  stillunsorted = []

  unsorted_array.each do |x|
    if x < smallest
    stillunsorted << smallest
    smallest = x
   else
    stillunsorted << x
  end
  end
    sorted_array << smallest
    recursive_sort stillunsorted, sorted_array
end

puts(sort(['can', 'life', 'moment', 'fun' ]))

def sort array
  recursive_sort array, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end
  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each do |test_object|
    if test_object < smallest
      still_unsorted.push smallest
      smallest = test_object
    else
      still_unsorted.push test_object
    end
  end
  sorted.push smallest
  recursive_sort still_unsorted, sorted
end

puts(sort(['can','feel','singing','like','a','can']))

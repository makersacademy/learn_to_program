def dictionary_sort array
  recursive_dictionary_sort array, []
end

def recursive_dictionary_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end
  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each do |test_object|
    if test_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = test_object
    else
      still_unsorted.push test_object
    end
  end
  sorted.push smallest
  recursive_dictionary_sort still_unsorted, sorted
end

puts(dictionary_sort(['can','feel','singing','Like','A','can']))

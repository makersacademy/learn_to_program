def dictionary_sort array
  recursive_dictionary_sort array, []
end

def recursive_dictionary_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each { |object|
    if object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = object
    else
      still_unsorted.push object
    end
       }
  sorted.push smallest
  recursive_dictionary_sort still_unsorted, sorted
end
def dictionary_sort(an_array)
  recursive_sort an_array, []
end
def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array.length <= 0
    return sorted_array
  end
  smallest = unsorted_array.pop
  still_unsorted = []

  unsorted_array.each do |word|
    if word.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = word
    else
      still_unsorted.push word
    end
  end
  sorted_array.push smallest
  recursive_sort still_unsorted, sorted_array
end

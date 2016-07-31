def dictionary_sort (arr)
  recursive_dictionay_sort arr, []
end

def recursive_dictionay_sort unsorted_array, sorted_array
  if unsorted_array.length <= 0
    return sorted_array
  end

  smallest = unsorted_array.pop   #in order to have two elements to compare using
                            #as .each takes first item of array
  still_unsorted = []


  unsorted_array.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = tested_object #found smallest object
    else
      still_unsorted.push tested_object #sends test object to end of array
    end
  end
sorted_array.push smallest #which is last item to be left in unsorted_array

recursive_dictionay_sort still_unsorted, sorted_array #recursive call using new still_unsorted array


end

puts (dictionary_sort (['apple', 'cranberry', 'Beetroot', 'gooseberry']))

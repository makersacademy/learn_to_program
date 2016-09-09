def dictionary_sort(array)

  recursive_sort(array, [])

end

def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array.length <= 0
    return sorted_array
  end

  smallest_word = unsorted_array.pop
  still_unsorted_array = []

  unsorted_array.each {|array_element| 
    if array_element.downcase <= smallest_word.downcase
      still_unsorted_array << smallest_word
      smallest_word = array_element

    else
      still_unsorted_array << array_element

    end
  }

  sorted_array.push(smallest_word)

  recursive_sort(still_unsorted_array, sorted_array)

end




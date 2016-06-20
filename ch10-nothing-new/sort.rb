def sort (arr)
  recursive_sort arr, []
end

def recursive_sort (unsorted_arr, sorted_arr)

  if unsorted_arr.length <= 0
    return sorted_arr
  end

  smallestWord = unsorted_arr.pop
  still_unsorted = []

  unsorted_arr.each { |testedWord|
    if testedWord < smallestWord
      still_unsorted.push (smallestWord)
      smallestWord = testedWord
    else
      still_unsorted.push (testedWord)
    end
  }

  sorted_arr.push (smallestWord)

  recursive_sort still_unsorted, sorted_arr

end

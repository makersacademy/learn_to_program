def sort arr
  recursive_sort(arr, [])
end

def recursive_sort(unsorted_arr, sorted_arr)
	if unsorted_arr.length < 1
    return sorted_arr
  end

  last_unsorted_word = unsorted_arr.pop
  new_arr = []

  unsorted_arr.each do |word|
    if word < last_unsorted_word
    new_arr << last_unsorted_word
    last_unsorted_word = word
    else
      new_arr << word
    end
  end

  sorted_arr << last_unsorted_word
  recursive_sort(new_arr, sorted_arr)
end

#test_array = ["orange","apple","banana","cherry","orange","watermelon"]
#puts test_array.length
#puts sort(test_array)
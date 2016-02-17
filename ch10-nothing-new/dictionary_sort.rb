
def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort(unsorted_arr, sorted_arr)
  if unsorted_arr.length <= 0
    return sorted_arr
  end

  new_unsorted_arr = []
  last_word = unsorted_arr.pop

  unsorted_arr.each do |word|
    if word < last_word
      new_unsorted_arr << last_word
      last_word = word
    else
      new_unsorted_arr << word
    end
  end
  sorted_arr << last_word
  unsorted_arr = new_unsorted_arr

  recursive_sort(new_unsorted_arr, sorted_arr)
end


# Alternative from GVK: works for both sort & dictionary_sort
# def recursive_sort unsorted, sorted
#     until unsorted == []
#       sorted << unsorted.slice!(unsorted.index(unsorted.min))
#     end
#   sorted
# end

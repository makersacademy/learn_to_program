def dictionary_sort arr
  # your code here
  sorted_ary = recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  if unsorted == []
    return sorted
  end

  still_unsorted = []
  check_word = unsorted.pop

  unsorted.each do |compare|
    if check_word.upcase < compare.upcase
      still_unsorted << compare
    else
      still_unsorted << check_word
      check_word = compare
    end
  end
  sorted << check_word

  recursive_sort still_unsorted, sorted
  return sorted
end

def dictionary_sort arr
  sorted_arr = []

  while arr.length > 0
  unsorted = []
  current_highest_alph = arr.pop

  arr.each do |new_word|
    if new_word.downcase < current_highest_alph.downcase
      unsorted << current_highest_alph
      current_highest_alph = new_word
    else unsorted << new_word
    end

  end
  sorted_arr << current_highest_alph
  arr = unsorted
  end

  return sorted_arr

end

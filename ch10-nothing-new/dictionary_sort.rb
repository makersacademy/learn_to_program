def dictionary_sort arr
  unsorted_arr = arr
  sorted_arr = []

  while unsorted_arr != []
    smallest_word = unsorted_arr.first
    unsorted_arr.each do |word|
      smallest_word = word if (word.downcase < smallest_word.downcase)
    end
    sorted_arr << smallest_word
    unsorted_arr.delete_at(unsorted_arr.index(smallest_word))
  end
  sorted_arr
end